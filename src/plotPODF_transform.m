function plotPODF_transform(job,hParent,hChild,varargin)
% plot transformation texture from VPSC file 
%
% Syntax
%  plotPODF_transform(job,hParent,hChild)
%
% Input
%  hParent     - @Miller (parent polefigures to plot)
%  hChild      - @Miller (child polefigures to plot)
%
% Options
%  odfSecP      - array with angles of parent ODF section to display
%  odfSecC      - array with angles of child ODF section to display
%  colormapP    - colormap string for parent PFs and ODFs
%  colormapC    - colormap string for child PFs and ODFs
%  variantId    - list of specific variant Ids to plot
%  variantWt    - list of specific variant weights to plot
%  halfwidth    - halfwidth for ODF calculation
%  points       - number of points to be written into the VPSC file
%  import       - (optional path) & name of the input VPSC file to transform
%  export       - (optional path) & name of the output transfromed VPSC file


odfSecP = get_option(varargin,'odfSecP',[0 45 65]*degree);
odfSecC = get_option(varargin,'odfSecC',[0 45 90]*degree);
cmapP = get_option(varargin,'colormapP','jet');
cmapC = get_option(varargin,'colormapC','hot');
variantId = get_option(varargin,'variantId',[]);
variantWt = get_option(varargin,'variantWt',[]);
hwidth = get_option(varargin,'halfwidth',2.5*degree);
numPoints = get_option(varargin,'points',1000);
pfName_In = get_option(varargin,'import','inputVPSC.Tex');
pfName_Out = get_option(varargin,'export','outputVPSC.Tex');



ORinfo(job.p2c,'silent');

%--- Define specimen symmetry
ss = specimenSymmetry('triclinic');


%--- Import the VPSC ODF file into memory
[oriP,fileProp] = orientation.load([pfName_In],job.csParent,ss,'interface','generic',...
    'ColumnNames', {'phi1' 'Phi' 'phi2' 'weights'}, 'Columns', [1 2 3 4], 'Bunge'); 
%---

%--- Calculate the orientation distribution function and define the specimen symmetry of the parent
oriP = oriP(:);
wtP = fileProp.weights; 
wtP = wtP(:);
odfP = calcDensity(oriP,'weights',wtP,'halfwidth',hwidth,'points','all');
%--- Define the specimen symmetry of the parent
odfP.SS = specimenSymmetry('orthorhombic');
%--- Calculate the value and orientation of the maximum f(g) in the ODF
[maxodfP_value,maxodfP_ori] = max(odfP);
%--- Calculate the parent pole figures from the parent orientation distribution function 
pfP = calcPoleFigure(odfP,hParent,regularS2Grid('resolution',2.5*degree),'antipodal');
%--- Calculate the value of the maximum f(g) in the PF
maxpfP_value = max(max(pfP));


%% Find all the specified child orientations 
oriC = variants(job.p2c, oriP, job.variantMap);

if ~isempty(variantId) && ~isempty(variantWt) % Both variant Ids and weights are specified
    % Checks for user-defined variant numbers
    if ~isinteger(int8(variantId)) ||... % integer check
            any(variantId < 0) ||... % negative integer check
            any(variantId > size(oriC,2)) % highest positive integer check
        error(['Variant Ids require positive integers between 1 and ',num2str(size(oriC,2))])
    end
    
    % Checks for user-defined variant weights
    if any(variantWt < 0) % negative floating point number check
        error('Variant weights require positive floating point numbers')
    elseif ~isequal(length(variantId), length(variantWt)) %  equal array size check
        error('Variant Ids and weights arrays of unequal size')
    end
    % Select only user-defined variants and their weights
    oriC = oriC(:,variantId);
    % Normalise the weights
    variantWt = variantWt/sum(variantWt);
    wtC = repmat(variantWt,size(oriC,1),1)./size(oriC,1);
    fprintf(['    - Plotting user-selected variants = ', num2str(variantId),' \n']);
    fprintf(['    - Using normalised weights = ', num2str(variantWt),' \n']);  
    
    
elseif ~isempty(variantId) && isempty(variantWt) % Only variant Ids specified
    % Checks for user-defined variant numbers
    if ~isinteger(int8(variantId)) ||... % integer check
            any(variantId < 0) ||... % negative integer check
            any(variantId > size(oriC,2)) % highest positive integer check
        error(['Variant Ids require positive integers between 1 and ',num2str(size(oriC,2))])
    end
    % Select only user-defined variants and their equal weights
    oriC = oriC(:,variantId);
    wtC = ones(size(oriC,1),length(variantId))./size(oriC,1);
    fprintf(['    - Plotting user-selected variants = ', num2str(variantId),' \n']);
    fprintf(['    - Using equal weights \n']);
        
    
elseif isempty(variantId) && ~isempty(variantWt) % Only variant weights specified
    error('Unable to assign variant weights. Variant numbers unspecified.')
    
    
elseif isempty(variantId) && isempty(variantWt) % Both variant Ids and weights are unspecified
    warning('Plotting all variants: (i) without selection, and (ii) with equal weights');
    wtC = ones(size(oriC,1),size(oriC,2))./size(oriC,1);
end

%--- Calculate the orientation distribution function and define the specimen symmetry of the child
oriC = oriC(:);
wtC = wtC(:);
odfC = calcDensity(oriC,'weights',wtC,'halfwidth',hwidth,'points','all');
%--- Define the specimen symmetry of the child
odfC.SS = specimenSymmetry('orthorhombic');
%--- Calculate the value and orientation of the maximum f(g) in the ODF
[maxodfC_value,maxodfC_ori] = max(odfC);
%--- Calculate the parent pole figures from the parent orientation distribution function 
pfC = calcPoleFigure(odfC,hChild,regularS2Grid('resolution',2.5*degree),'antipodal');
%--- Calculate the value of the maximum f(g) in the PF
maxpfC_value = max(max(pfC));



%% Define the window settings for a set of docked figures
% % Ref: https://au.mathworks.com/matlabcentral/answers/157355-grouping-figures-separately-into-windows-and-tabs
warning off
desktop = com.mathworks.mde.desk.MLDesktop.getInstance;
% % Define a unique group name for the dock using the function name 
% % and the system timestamp
dockGroupName = ['plotPODF_transform_',char(datetime('now','Format','yyyyMMdd_HHmmSS'))];
desktop.setGroupDocked(dockGroupName,0);
bakWarn = warning('off','MATLAB:HandleGraphics:ObsoletedProperty:JavaFrame');




%% Plot the parent pole figures
figH = gobjects(1);
figH = figure('WindowStyle','docked');
set(get(handle(figH),'javaframe'),'GroupName',dockGroupName);
drawnow; 
odfP.SS = specimenSymmetry('triclinic');
plotPDF(odfP,...
    hParent,...
    'points','all',...
    'equal','antipodal',...
    'contourf',1:ceil(maxpfP_value));
colormap(cmapP);
% colormap(flipud(colormap(cmapP))); % option to flip the colorbar
caxis([1 ceil(maxpfP_value)]);
% colorbar('location','eastOutSide','LineWidth',1.25,'TickLength', 0.01,...
%     'YTick', [0:1:ceil(maxpfP_value)],...
%     'YTickLabel',num2str([0:1:ceil(maxpfP_value)]'), 'YLim', [0 ceil(maxpfP_value)],...
%     'TickLabelInterpreter','latex','FontName','Helvetica','FontSize',14,'FontWeight','bold');
% movegui(figH,'center');
set(figH,'Name','Parent PF(s)','NumberTitle','on');
drawnow;
odfP.SS = specimenSymmetry('orthorhombic');
%---

%% Plot the parent orientation distribution function
figH = gobjects(1);
figH = figure('WindowStyle','docked');
set(get(handle(figH),'javaframe'),'GroupName',dockGroupName);
drawnow; 
plotSection(odfP,...
    'phi2',odfSecP,...
    'points','all','equal',...
    'contourf',1:ceil(maxodfP_value));    
colormap(cmapP);
% colormap(flipud(colormap(cmapP))); % option to flip the colorbar
caxis([1 ceil(maxodfP_value)]);
% colorbar('location','eastOutSide','LineWidth',1.25,'TickLength', 0.01,...
%     'YTick', [0:5:ceil(maxodfP_value)],...
%     'YTickLabel',num2str([0:5:ceil(maxodfP_value)]'), 'YLim', [0 ceil(maxodfP_value)],...
%     'TickLabelInterpreter','latex','FontName','Helvetica','FontSize',14,'FontWeight','bold');
% movegui(figH,'center');
set(figH,'Name','Parent ODF','NumberTitle','on');
odfP.SS = specimenSymmetry('triclinic');
drawnow;
%---



%% Plot the child pole figures
figH = gobjects(1);
figH = figure('WindowStyle','docked');
set(get(handle(figH),'javaframe'),'GroupName',dockGroupName);
drawnow; 
odfC.SS = specimenSymmetry('triclinic');
plotPDF(odfC,...
    hChild,...
    'points','all',...
    'equal','antipodal',...
    'contourf');
% colormap(cmapC);
colormap(flipud(colormap(cmapC)));  % option to flip the colorbar
% colorbar('location','eastOutSide','LineWidth',1.25,'TickLength', 0.01,...
%     'YTick', [0:1:ceil(maxpfC_value)],...
%     'YTickLabel',num2str([0:1:ceil(maxpfC_value)]'), 'YLim', [0 ceil(maxpfC_value)],...
%     'TickLabelInterpreter','latex','FontName','Helvetica','FontSize',14,'FontWeight','bold');
% movegui(figH,'center');
if ~isempty(variantId) && ~isempty(variantWt)
    set(figH,'Name',['Child PF(s) for variants: ',num2str(variantId),' with norm. wts.'],'NumberTitle','on');
elseif ~isempty(variantId) && isempty(variantWt)
    set(figH,'Name',['Child PF(s) for variants: ',num2str(variantId),' with equal weights'],'NumberTitle','on');
elseif isempty(variantId) && isempty(variantWt)
    set(figH,'Name','Child PF(s) w/o variant selection & with equal wts.','NumberTitle','on');
end
drawnow;
odfC.SS = specimenSymmetry('orthorhombic');
%---



%% Plot the child orientation distribution function
figH = gobjects(1);
figH = figure('WindowStyle','docked');
set(get(handle(figH),'javaframe'),'GroupName',dockGroupName);
drawnow; 
plotSection(odfC,...
    'phi2',odfSecC,...
    'points','all','equal',...
    'contourf',1:ceil(maxodfC_value));
% colormap(cmapC);
colormap(flipud(colormap(cmapC))); % option to flip the colorbar
caxis([1 ceil(maxodfC_value)]);
% colorbar('location','eastOutSide','LineWidth',1.25,'TickLength', 0.01,...
%     'YTick', [0:5:ceil(maxodfC_value)],...
%     'YTickLabel',num2str([0:5:ceil(maxodfC_value)]'), 'YLim', [0 ceil(maxodfC_value)],...
%     'TickLabelInterpreter','latex','FontName','Helvetica','FontSize',14,'FontWeight','bold');
% movegui(figH,'center');
if ~isempty(variantId) && ~isempty(variantWt)
    set(figH,'Name',['Child ODF for variants: ',num2str(variantId),' with norm. wts.'],'NumberTitle','on');
elseif ~isempty(variantId) && isempty(variantWt)
    set(figH,'Name',['Child ODF for variants: ',num2str(variantId),' with equal wts.'],'NumberTitle','on');
elseif isempty(variantId) && isempty(variantWt)
    set(figH,'Name','Child ODF w/o variant selection & with equal wts.','NumberTitle','on');
end
odfC.SS = specimenSymmetry('triclinic');
drawnow;
%---



%%  Save a VPSC *.tex file
export_VPSC(odfC,[pfName_Out],'interface','VPSC','Bunge','points',numPoints);
%---



%% Place first tabbed figure on top and return
warning on
allfigh = findall(0,'type','figure');
if length(allfigh) > 1
    figure(length(allfigh)-3);
else
    figure(1);
end
warning(bakWarn);
pause(1); % Reduce rendering errors
return
end
