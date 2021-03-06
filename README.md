Download the [**LATEST STABLE RELEASE**](https://github.com/ORTools4MTEX/ORTools/releases/tag/v1.2.0) or the [**DEVELOPER VERSION**](https://github.com/ORTools4MTEX/ORTools/archive/develop.zip) by clicking on either weblink

| [**How to use**](https://github.com/ORTools4MTEX/ORTools#how-to-use) 
| [**Example scripts**](https://github.com/ORTools4MTEX/ORTools#example-scripts) 
| [**Function reference**](https://github.com/ORTools4MTEX/ORTools#function-reference) |

---
<p align="left">
  <img src="./doc/images/ORTools.png" alt="ORTools" width="300"/>
</p>

**ORTools** (orientation relationship tools) is a function library for OR discovery, advanced OR analysis and the plotting of visually stunning and informative publication-ready figures particular to microstructures undergone partial/full martensitic transformation or OR-related phase transition. The **ORTools** function library is written in [**MATLAB**](https://mathworks.com/products/matlab.html) and is used as an add-on to the basic phase transformation functionalities within the **MATLAB**-based crystallographic toolbox [**MTEX**](https://mtex-toolbox.github.io). Due to their specific nature, the codes contained in the **ORTools** library have not been included in MTEX. You may want to watch this [talk by Frank Niessen](https://youtu.be/B0faPjtOdmA) at the 2021 MTEX Workshop for an introduction to the phase transition features in MTEX and ORTools. 

The advanced OR discovery, analysis and plotting functionalities of the **ORTools** library are highlighted in a series of [example scripts](https://github.com/ORTools4MTEX/ORTools#example-scripts) that showcase how the functions work and what their output comprises.

**ORTools** has been created by [**Dr Azdiar Gazder**](https://www.researchgate.net/profile/Azdiar-Gazder) and [**Dr Frank Niessen**](https://www.researchgate.net/profile/Frank-Niessen-4). If you have applied the OR discovery, OR and variant analyses, parent grain reconstruction, and correlated plotting features of MTEX and **ORTools** to your research, [**please cite this paper as your reference**](https://arxiv.org/abs/2104.14603).

To help maintain the **ORTools** library, please report any bugs you encounter. If you would like to contribute additional functionality or wish to suggest new features that help improve it, please contact us.

[![ORTools - Short video introduction](http://img.youtube.com/vi/inkR6LBzFeQ/0.jpg)](http://www.youtube.com/watch?v=inkR6LBzFeQ "Video Title")

[*ORTools Introduction*](https://youtu.be/inkR6LBzFeQ)

---
## How to use
- You can download the [**latest stable release**](https://github.com/ORTools4MTEX/ORTools/releases/tag/v1.2.0) or the [**developer version**](https://github.com/ORTools4MTEX/ORTools/archive/develop.zip).
- This library only works after the prior installation of **MATLAB** and **MTEX**. Follow the instructions for installing [MATLAB](https://se.mathworks.com/help/install/install-products.html) and [MTEX](https://mtex-toolbox.github.io/download) by clicking on these weblinks and/or refer to the video given below. ORTools is tested for compatibility down to MATLAB 2016b. Check with each [release](https://github.com/ORTools4MTEX/ORTools/releases) with which MTEX it is compatible. The peak-fitting funcionality within function [defineORs](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#defineors) requires installation of the MATLAB Signal Processing Toolbox.
- Open MATLAB and run one of the example files. Please refer to the [*Example 1*](https://youtu.be/AcR-nXg5QKo) instruction video to learn how to run the examples. Alternatively, if you do not wish to run the example files and want to use the function library instead, please ensure the **ORTools** root directory and all of its sub-directories are added to the MATLAB path. 
- If you encounter any problems, please contact us.
- If you would like to contribute additional functionality or wish to suggest new features, please contact us.

[![ORTools - How to install MTEX](http://img.youtube.com/vi/SsiDFqqqZU4/0.jpg)](http://www.youtube.com/watch?v=SsiDFqqqZU4 "Video Title")

[*How to install MTEX*](https://youtu.be/SsiDFqqqZU4)

---

##  Example scripts
The world of martensitic transformation or phase transition analysis can be difficult to navigate. To help make the analysis accessible, transparent, and easy to comprehend, the **ORTools** library consists of plug-and-play functions. Example scripts are provided to help demonstrate these functions *in action*.

It is possible to run the example scripts from start to end, but we encourage you to run the example scripts [in sections](https://mathworks.com/help/matlab/matlab_prog/run-sections-of-programs.html) to understand the correlation between the code and the generated results. This will also help you follow the comments, which provide instructions on the various choices to make in the interactive parts of the program and/or help explain the obtained plots and results. In this way, you will learn the syntax applied throughout the code as well as the meaning behind the presented results.

---

### [Example 1](./ORTools_example1.m)
#### Parent grain reconstruction and variant analysis in lath martensitic steel
This script follows the same dataset and steps that are used to demonstrate the reconstruction of austenitic parent grains from martensite grains in the official [MTEX example](https://mtex-toolbox.github.io/MaParentGrainReconstruction.html) for martensite transformation in steels. Here we demonstrate how **ORTools** provides pre-written and additional plotting functions to create publication-ready plots.

[![ORTools - Example 1](http://img.youtube.com/vi/AcR-nXg5QKo/0.jpg)](http://www.youtube.com/watch?v=AcR-nXg5QKo "Video Title")

[*Example 1 - Parent grain reconstruction in steel*](https://youtu.be/AcR-nXg5QKo)

---

### [Example 2](./ORTools_example2.m)
#### Parent grain reconstruction and variant analysis in titanium alloys
This script follows the same dataset and steps that are used to demonstrate the reconstruction of β grains from an α microstructure in the official [MTEX example](https://mtex-toolbox.github.io/TiBetaReconstruction.html) for phase transitions in titanium alloys. Here the [OR peak fitter](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#peakFitORs) function is used to determine the OR from alpha-beta boundaries even though they only make up < 1% of all boundaries in the dataset. Advanced plotting functions are employed to produce publication-ready plots.

[![ORTools - Example 2](http://img.youtube.com/vi/e6R0dApUc8Q/0.jpg)](http://www.youtube.com/watch?v=e6R0dApUc8Q "Video Title")

[*Example 2 - Parent grain reconstruction in titanium alloys*](https://youtu.be/e6R0dApUc8Q)

---

### [Example 3](./ORTools_example3.m)
#### Using the OR peak fitter to deconvolute multiple ORs in titanium alloys
In [example 2](https://github.com/ORTools4MTEX/ORTools#example-2) we noted that the α-β Ti microstructure showed two ORs in the [OR peak fitter](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#peakFitORs) function. In this example, we want to return both ORs and investigate which one of them dominated during phase transition. We do this by plotting the disorientation between grain boundary misorientations and the OR misorientations in inverse pole figures and on boundary maps to evaluate the best match.

[![ORTools - Example 3](http://img.youtube.com/vi/8e9PhhFCWYc/0.jpg)](http://www.youtube.com/watch?v=8e9PhhFCWYc "Video Title")

[*Example 3 - Separation of multiple ORs in titanium alloys*](https://youtu.be/8e9PhhFCWYc)

---

### [Example 4](./ORTools_example4.m)
#### Predicting the β to α transformation texture in a titanium alloy
In this script, we repeat the reconstruction of the prior β microstructure from an α microstructure as shown in [example 2](https://github.com/ORTools4MTEX/ORTools#example-2) with less detail. We then look at the variant distribution and conclude that strongly preferential variant selection did not occur. We are therefore in a good position to predict the transition texture of α from the reconstructed β using the [plotPODF_transform](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#plotPODF_transform) function. The predicted transition α texture is in good agreement with the experimental α texture.

[![ORTools - Example 4](http://img.youtube.com/vi/Yx2jKII3HUc/0.jpg)](http://www.youtube.com/watch?v=Yx2jKII3HUc "Video Title")

[*Example 4 - Transformation texture prediction in titanium alloys*](https://youtu.be/Yx2jKII3HUc)

---

### [Example 5](./ORTools_example5.m)
#### Partial parent grain reconstruction to clean TRWIP steel EBSD data
This example is of a 20% cold-rolled twinning and transformation induced plasticity (TRWIP) steel microstructure presenting with a two-step martensitic transformation in which ε martensite formed from γ austenite, and α' martensite formed from ε martensite. Using the [OR peak fitter](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#peakFitORs) function, we discover that two possible ORs could be in operation for the γ to α' microstructure. We identify that the first of them is not a real OR but corresponds to points that were misindexed as α' even though they belong to γ. We use the parent phase reconstruction features in MTEX and the apprent OR to revert these misindexed points to γ. We then re-run the grain calculation and the OR peak fitter to show that the apparent OR was eliminated. 

*EBSD map courtesy: Pramanik et al. https://doi.org/10.1016/j.msea.2018.06.024*

[![ORTools - Example 5](http://img.youtube.com/vi/Hj5kVscjljU/0.jpg)](http://www.youtube.com/watch?v=Hj5kVscjljU "Video Title")

[*Example 5 - Partial parent grain reconstruction to clean TRIP-TWIP steel EBSD map data*](https://youtu.be/Hj5kVscjljU)

---

### [Example 6](./ORTools_example6.m)
#### Two-stage parent grain reconstruction in a TWIP-TRIP steel
This example is of a 10% cold-rolled twinning and transformation induced plasticity (TWIP-TRIP) steel microstructure with a two-step martensitic transformation in which ε martensite formed from γ austenite, and α' martensite formed from ε martensite. Here we use ORTools and the MTEX parent grain reconstruction functionalities to reconstruct both parent microstructures in a single workflow. Towards the end, we demonstrate that variant analysis can be conducted on both transformations. 

*EBSD map courtesy: Pramanik et al. https://doi.org/10.1016/j.msea.2018.06.024*

[![ORTools - Example 6](http://img.youtube.com/vi/K2rO3Mx4A8s/0.jpg)](http://www.youtube.com/watch?v=K2rO3Mx4A8s "Video Title")

[*Example 6 - Two-stage parent grain reconstruction in a TWIP-TRIP steel*](https://youtu.be/K2rO3Mx4A8s)

---

##  Function reference

### Function Index

- [computeGrains](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#computeGrains)
- [defineORs](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#defineors)
- [fibreMaker](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#fibreMaker)
- [grainClick](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#grainClick)
- [guiOR](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#guiOR)
- [orientationMaker](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#orientationMaker)
- [ORinfo](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#ORinfo)
- [peakFitORs](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#peakFitORs)
- [plotHist_OR_misfit](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#plotHist_OR_misfit)
- [plotIPDF_gB_misfit](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#plotIPDF_gB_misfit)
- [plotIPDF_gB_prob](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#plotIPDF_gB_prob)
- [plotMap_clusters](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#plotMap_clusters)
- [plotMap_gB_c2c](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#plotMap_gB_c2c)
- [plotMap_gB_misfit](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#plotMap_gB_misfit)
- [plotMap_gB_p2c](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#plotMap_gB_p2c)
- [plotMap_gB_prob](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#plotMap_gB_prob)
- [plotMap_IPF_p2c](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#plotMap_IPF_p2c)
- [plotMap_packets](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#plotMap_packets)
- [plotMap_phases](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#plotMap_phases)
- [plotMap_variants](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#plotMap_variants)
- [plotPDF_packets](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#plotPDF_packets)
- [plotPDF_variants](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#plotPDF_variants)
- [plotPODF_transform](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#plotPODF_transform)
- [plotStack](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#plotStack)
- [readCPR](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#readCPR)
- [recolorPhases](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#recolorPhases)
- [renamePhases](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#renamePhases)
- [saveImage](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#saveImage)
- [screenPrint](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#screenPrint)
- [setParentGrainReconstructor](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#setParentGrainReconstructor)
- [tileFigs](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#tileFigs)

---

### [computeGrains](./src/computeGrains.m)
Small GUI to compute grains from EBSD data and optionally filter them.

- Syntax
  - [ebsd,grains,gB] = computeGrains(ebsd)
- Input
  - ebsd  - @EBSD
- Output
  - ebsd     - @EBSD
  - grains   - @grains2d 
  - gB       - @grainBoundary

<p align="center">
  <img src="./doc/images/computeGrains.png" alt="UI of computeGrains" width="400"/>
</p>

---

### [defineORs](./src/defineORs.m)
Auxiliary function to define orientation relationships for a parent and child phase given in *job* by either parallel planes and directions in a GUI or peakfitting of the parent-child boundary misorientation angle distribution

- Syntax
  - job = defineORs(job)
- Input
  - job  - @parentGrainReconstructor
- Output
  - job  - @parentGrainReconstructor

---

### [fibreMaker](./src/fibreMaker.m)
The function creates a VPSC file with orientations following the distribution of a fibre ODF

- Syntax
  -  fibreMaker(crystalDirection,specimenDirection)
- Input
  - crystalDirection  - @Miller
  - specimenDirection - @vector3d
- Options
  - halfwidth    - halfwidth for ODF calculation
  - points       - number of points (orientations) in the VPSC file
  - export       - (optional path) & name of the VPSC file

---

### [grainClick](./src/grainClick.m)
Interactive map to select parent grains for further analysis

- Syntax
  - grainClick(job)
- Input
  - job  - @parentGrainReconstructor
  - direction - @vector3d 
- Option
  - parentTwins  - Refine grains to detect parent twins
  - grains       - Plot grain data instead of EBSD data 
  - noScalebar   - Remove scalebar from maps
  - noFrame      - Remove frame around maps

<p align="center">
  <img src="./doc/images/grainClick.png" alt="Plots from grainClick" width="500"/>
</p>

---

### [guiOR](./src/guiOR.m)
Graphical user interface for definition of an orientation relationship by parallel planes and directions

- Syntax
  - p2c = guiOR(job)
- Input
  - job  - @parentGrainReconstructor
- Output
  - p2c  - parent to child misorientation

<p align="center">
  <img src="./doc/images/guiOR.png" alt="UI of guiOR" width="600"/>
</p>

---

### [orientationMaker](./src/orientationMaker.m)
The function creates a VPSC file with orientations following the distribution of a unimodal ODF

- Syntax
  -  orientationMaker(ori)
- Input
  - ori   - @orientation
- Options
  - halfwidth    - halfwidth for ODF calculation
  - points       - number of points (orientations) in the VPSC file
  - export       - (optional path) & name of the VPSC file

---

### [ORinfo](./src/ORinfo.m)
The function outputs information about the orientation relationship in the command window and returns a structure containing the information.

- Syntax
  -  ORinfo(p2c)
- Input
  - p2c       - parent to child misorientation
- Output
  - OR        - structure containing OR information
- Options
  - silent    - suppress command window output

<p align="center">
  <img src="./doc/images/ORinfo.png" alt="Command window output example from ORinfo" width="500"/>
</p>

---

### [peakFitORs](./src/peakFitORs.m)
The function peak fits parent-child misorientation angle ranges for determination of one or several orientation relationships.
The function is called by [defineORs](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#defineors).

- Syntax
  -  p2c = peakFitORs(job,misoRange)
- Input
  - job         - @parentGrainReconstructor
  - misoRange   - range of misorientation angles in which to fit
- Output
  - p2c       - parent to child misorientation

<p align="center">
  <img src="./doc/images/peakFitORs.png" alt="Interactive fitting window on which peakFitORs is applied." width="500"/>
</p>

---

### [plotHist_OR_misfit](./src/plotHist_OR_misfit.m)
This function plots the disorientation, or misfit, between parent-child and child-child grains and an orientation relationship in a histogram. By default, the current OR (*job.p2c*) is selected and is denoted by 2 stars (**). Additional ORs can be supplied with the argument *p2c*.

- Syntax
  -  plotHist_OR_misfit(job)
  -  plotHist_OR_misfit(job,p2c)
- Input
  - job  - @parentGrainReconstructor
  - p2c  - one or multiple additional orientation relationship(s) to evaluate
- Options
  - bins    - number of histogram bins
  - legend  - cell array of strings with legend names of ORs to evaluate

<p align="center">
  <img src="./doc/images/plotHist_OR_misfit.png" alt="Plot example from plotHist_OR_misfit" width="500"/>
</p>

---

### [plotIPDF_gB_misfit](./src/plotIPDF_gB_misfit.m)
This function plots the misfit, or disorientation, between parent-child and child-child boundaries with the orientation relationship in an inverse pole figure showing the misorientation axes

- Syntax
  -  plotIPDF_gB_misfit(job)
- Input
  - job  - @parentGrainReconstructor
- Options
  - colormap  - colormap string  

<p align="center">
  <img src="./doc/images/plotIPDF_gB_misfit.png" alt="Plot example from plotIPDF_gB_misfit" width="1000"/>
</p>

---

### [plotIPDF_gB_prob](./src/plotIPDF_gB_prob.m)
This function calculates and plots the probability distribution between 0 and 1, that a boundary belongs to an orientation relationship in an inverse pole figure showing the misorientation axes

- Syntax
  -  plotIPDF_gB_prob(job)
- Input
  - job  - @parentGrainReconstructor
- Options
  - colormap  - colormap string  

<p align="center">
  <img src="./doc/images/plotIPDF_gB_prob.png" alt="Plot example from plotIPDF_gB_prob" width="1000"/>
</p>

---

### [plotMap_clusters](./src/plotMap_clusters.m)
The function shows the clusters of grains that are likely to belong to the same parent grain, created with [clusterGraph](https://mtex-toolbox.github.io/parentGrainReconstructor.clusterGraph.html) on top of the  semin-transparent IPF map of child grains.

- Syntax
  -  ipfKey = plotMap_clusters(job)
  -  ipfKey = plotMap_clusters(job,direction)
- Input
  - job        - @parentGrainReconstructor
  - direction  - @vector3d - IPF direction

<p align="center">
  <img src="./doc/images/plotMap_clusters.png" alt="Plot example from plotMap_clusters" width="500"/>
</p>

---

### [plotMap_gB_c2c](./src/plotMap_gB_c2c.m)
The function colorizes the child-child boundaries in *job*

- Syntax
  -  plotMap_gB_c2c(job)
- Input
  - job  - @parentGrainReconstructor
- Options
  - colormap  - colormap string 

<p align="center">
  <img src="./doc/images/plotMap_gB_c2c.png" alt="Plot example from plotMap_gB_c2c" width="500"/>
</p>

---

### [plotMap_gB_misfit](./src/plotMap_gB_misfit.m)
The function colorizes the misfit, or disorientation, between parent-child and child-child boundaries with the orientation relationship *job.p2c*

- Syntax
  - plotMap_gB_misfit(job)
- Input
  - job  - @parentGrainReconstructor
- Options
  - colormap  - colormap string 

<p align="center">
  <img src="./doc/images/plotMap_gB_misfit.png" alt="Plot example from plotMap_gB_misfit" width="500"/>
</p>

---

### [plotMap_gB_p2c](./src/plotMap_gB_p2c.m)
The function colorizes the parent-child boundaries in *job* according to their misorientation angle.

- Syntax
  -  plotMap_gB_p2c(job)
- Input
  - job  - @parentGrainReconstructor
- Options
  - colormap  - colormap string 
 
<p align="center">
  <img src="./doc/images/plotMap_gB_p2c.png" alt="Plot example from plotMap_gB_p2c" width="500"/>
</p>

---

### [plotMap_gB_prob](./src/plotMap_gB_prob.m)
The function calculates and plots the probability distribution between 0 and 1, that a 
boundary belongs to the orientation relationship (see more [here](https://mtex-toolbox.github.io/parentGrainReconstructor.calcGraph.html))

- Syntax
  -  plotMap_gB_prob(job)
- Input
  - job  - @parentGrainReconstructor
- Options
  - threshold - the misfit at which the probability is exactly 50 percent ... 
  - tolerance - ... and the standard deviation in a cumulative Gaussian distribution
  - colormap  - colormap string 
 
<p align="center">
  <img src="./doc/images/plotMap_gB_prob.png" alt="Plot example from plotMap_gB_prob" width="500"/>
</p>

---

### [plotMap_IPF_p2c](./src/plotMap_IPF_p2c.m)
The function plots the inverse polefigure maps of the parent and child phases and returns the ipfHSV color key.

- Syntax
  -  plotMap_IPF_p2c(job)
  -  plotMap_IPF_p2c(job, direction)
- Input
  - job       - @parentGrainReconstructor
  - direction - @vector3d 
- Option
  - parent - plot only map of parent phase
  - child  - plot only map of child phase 
- Output
  - ipfKey - @ipfHSVKey 

<p align="center">
  <img src="./doc/images/plotMap_IPF_p2c.png" alt="Plot example from plotMap_IPF_p2c" width="800"/>
</p>

---

### [plotMap_packets](./src/plotMap_packets.m)
The function plots the map of child grains colored according to their packet ID.

- Syntax
  -  plotMap_packets(job)
- Input
  - job  - @parentGrainReconstructor
- Option
  - colormap - colormap string
  - grains   - Plot grain data instead of EBSD data 

<p align="center">
  <img src="./doc/images/plotMap_packets.png" alt="plotMap_packets" width="500"/>
</p>

---

### [plotMap_phases](./src/plotMap_phases.m)
The function plots a phase map of the grains within *job* and the grain boundaries (*job.grains.boundary*).

- Syntax
  -  p2c = plotMap_phases(job)
- Input
  - job  - @parentGrainReconstructor

<p align="center">
  <img src="./doc/images/plotMap_phases.png" alt="Plot example from plotMap_phases" width="500"/>
</p>

---

### [plotMap_variants](./src/plotMap_variants.m)
The function plots the map of child grains colored according to their variant ID.

- Syntax
  -  plotMap_variants(job)
- Input
  - job  - @parentGrainReconstructor
- Option
  - colormap - colormap string
  - grains   - Plot grain data instead of EBSD data 

<p align="center">
  <img src="./doc/images/plotMap_variants.png" alt="plotMap_variants" width="500"/>
</p>

---

### [plotPDF_packets](./src/plotPDF_packets.m)
The function plots a pole figure of the martensitic packets associated with the OR *job.p2c*.

- Syntax
  -  plotPDF_packets(job)
  -  plotPDF_packets(job, oriParent)
  -  plotPDF_packets(job, oriParent, pdf)
- Input
  - job       - @parentGrainReconstructor
  - oriParent - @orientation
  - pdf       - @Miller
- Options
  - colormap   - colormap string 
  - markersize - markersize 

<p align="center">
  <img src="./doc/images/plotPDF_packets.png" alt="Plot example from plotPDF_packets" width="300"/>
</p>

---

### [plotPDF_variants](./src/plotPDF_variants.m)
The function plots a pole figure of the martensitic variants associated with the OR *job.p2c*. It is an alternative to MTEX's [plotVariantPF](https://mtex-toolbox.github.io/parentGrainReconstructor.plotVariantPF.html).

- Syntax
  -  plotPDF_variants(job)
  -  plotPDF_variants(job, oriParent)
  -  plotPDF_variants(job, oriParent, pdf)
- Input
  - job       - @parentGrainReconstructor
  - oriParent - @orientation
  - pdf       - @Miller
- Options
  - colormap   - colormap string 
  - markersize - markersize 

<p align="center">
  <img src="./doc/images/plotPDF_variants.png" alt="Plot example from plotPDF_variants" width="300"/>
</p>

---

### [plotPODF_transform](./src/plotPODF_transform.m)
The function calculates and plots the transformation texture, with or without imposing variant selection, based on a parent texture in inputVPSC.Tex. Input files can be created from EBSD data as presented in [example 4](https://github.com/ORTools4MTEX/ORTools#example-4) or created with [fibreMaker](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#fibreMaker) or [orientationMaker](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#orientationMaker)

- Syntax
  -  plotPODF_transformation(job,hParent,hChild)
- Input
  - hParent     - @Miller  (parent pole figures to display)
  - hChild      - @Miller  (child pole figures to display)
- Options
  - odfSecP      - array with angles of parent ODF section to display
  - odfSecC      - array with angles of child ODF section to display
  - colormapP    - colormap string for parent PFs and ODFs
  - colormapC    - colormap string for child PFs and ODFs
  - variantId    - list of specific variant Ids to plot
  - variantWt    - list of specific variant weights to plot
  - halfwidth    - halfwidth for ODF calculation
  - points       - number of points to be written into the VPSC file
  - import       - (optional path) & name of the input VPSC file to transform
  - export       - (optional path) & name of the output transformed VPSC file

<p align="center">
  <img src="./doc/images/plotPODF_transformation.png" alt="Plot example from plotPODF_transform" width="1000"/>
</p>

---

### [plotStack](./src/plotStack.m)
The function plots maps for martensite variant analysis of a single prior parent grain. You can manually supply a parent grain Id *pGrainId* or use the function [grainClick](https://github.com/ORTools4MTEX/ORTools/blob/master/README.md#grainClick) to choose a grain interactively.

- Syntax
  -  plotStack(job,pGrainId)
- Input
  - job          - @parentGrainreconstructor
  - pGrainId     - parent grain Id
  - direction    - @vector3d 
- Option
  - grains       - Plot grain data instead of EBSD data 
  - noScalebar   - Remove scalebar from maps
  - noFrame      - Remove frame around maps

<p align="center">
  <img src="./doc/images/plotStack.png" alt="Plot example from plotStack" width="1000"/>
</p>

---

### [readCPR](./src/readCPR.m)
An auxiliary function to read in *.cpr/.crc* files with a browser window.

- Syntax
  - ebsd = readCPR
  - ebsd = readCPR(inPath)
  - ebsd = readCPR(inPath, fileName)
- Input
  - inPath   - string with path to directory 'xx\yy\zz\'
  - fileName - string with filename 'xxyyzz.cpr'
- Output
  - ebsd             - @EBSD

---

### [recolorPhases](./src/recolorPhases.m)
The function opens an interactive GUI color picker to redefine the phase colors using the *ebsd* or *grains* variables.

- Syntax
  - [ebsd] = recolorPhases(ebsd)
  - [grains] = recolorPhases(grains)
- Input
  - ebsd             - @EBSD
  - grains           - @grains2d
- Output
  - ebsd             - @EBSD
  - grains           - @grains2d
  
<p align="center">
  <img src="./doc/images/recolorPhases.png" alt="GUI of recolorPhases" width="200"/>
</p>

---

### [renamePhases](./src/renamePhases.m)
The function opens an interactive list with the possible phasenames in *phaseStrings* and renames the phases in *ebsd* according to the selection.

- Syntax
  - ebsd = renamePhases(ebsd,phStr)
- Input
  - ebsd             - @EBSD
  - phaseStrings     - cell array of strings with possible phase names
- Output
  - ebsd             - @EBSD

---

### [saveImage](./src/saveImage.m)
An auxiliary function to save all open figures as images.

- Syntax
  - saveImage(fileDir,fileName)
  - saveImage(fileDir)
  - saveImage
- Input
  - fileName    - file name (string with file of type * .bmp, * .jpeg, * .png or * .tiff )
  - fileDir     - file directory

---

### [screenPrint](./src/screenPrint.m)
An auxiliary function for formating command window output.

- Syntax
  - screenPrint(mode)
  - screenPrint(mode, string)
- Input
  - mode     - Formatting mode
  - string   - Output string

---

### [setParentGrainReconstructor](./src/setParentGrainReconstructor.m)
An auxiliary GUI function to define a job of class [parentGrainReconstructor](https://mtex-toolbox.github.io/parentGrainReconstructor.parentGrainReconstructor.html).

- Syntax
  - setParentGrainReconstructor(ebsd,grains)
  - setParentGrainReconstructor(ebsd,grains,inPath)
- Input
  - ebsd     - @EBSD
  - grains   - @grain2d
  - inPath   - string giving path to * .cif file folder 
- Output
  - job      - @parentGrainReconstructor

---

### [tileFigs](./src/tileFigs.m)
An auxiliary function to distribute figures evenly over a user screen/monitor.

- Syntax
  - fileFigs
