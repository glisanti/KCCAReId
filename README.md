KCCA-ReId
========

**NEWS: We improved our method! Please, check it out [MCK-CCA web page](https://github.com/glisanti/MCK-CCA)**
---

We provided the implementation of the paper  _Giuseppe Lisanti , Iacopo Masi , Alberto Del Bimbo, "Matching People across Camera Views using Kernel Canonical Correlation Analysis”, Eighth ACM/IEEE International Conference on Distributed Smart Cameras, 2014._

![KCCA-ReId](http://www.micc.unifi.it/masi/kcca.png)

## Requirements 
You need the following software to run the code:

1. [MATLAB (Windows, Unix version is the same)](http://www.mathworks.com/products/matlab/)
2. [Dr. Hardoon's KCCA code package.](http://www.davidroihardoon.com/) (4.3 KB)
3. [Descriptors computed as described in the paper for the VIPeR and PRID dataset.](https://www.dropbox.com/s/e0bm0rzsu3fctja/kccareid_data.zip?dl=0) (229 MB)

**Aug. 2016: It seems that the link to the KCCA package from Hardoon is not publicly available anymore on his website. If you want to run our approach your have to manually request his code dropping an email to [Dr. Hardoon](http://www.davidroihardoon.com/).**

~~Sept. 2014: Please, note that the code is automatically attempting to download third-party libraries and data.~~

## Demo Example
To run our code just run _demo_reid_kcca.m_
	
You can change the dataset and enable CCA comparison with the following parameters:

  	datasetname='VIPeR'; %VIPeR %PRID
  	ccaON = 0; %% can be turned off since it is slow.
  	
and you will get something like this:

	>Computing Trial 1...
	>Applying Kernel to Train and Test...
	>Computing KCCA  on the training set...
	Centering Kx and Ky
	Decomposing Kernel with PGSO
	Computing nbeta from nalpha
	>Projecting the test data...
	>Computing distances...
	>Evaluating results...
	>Computing Trial 2...

## Person Representation (Improved WHOS descriptor)

For representing a person we improved the _WHOS descriptor_ presented
in [2]. For the first part of the descriptor (color histograms),
please see the details in [2]. (The only difference from [2] is that
here we used a non-isotropic Gaussian kernel). Please see a video animation [here](https://github.com/glisanti/WHOS/).

For the second part of the descriptor (HOG + LBP) you can find here
some details to re-implement the feature:

**HOG**: to compute HOG descriptor we quantized the gradients in 4
bins, pooling 8 px per cell, using block 2x2, no 360 degree, and
cutting at 1 for normalization. We computed this in the _window_
parameter specified below.

**LBP**: to compute LBP descriptor, we used the _window_ parameter
specified below, quantizing LBP codes using [vl_feat code](http://www.vlfeat.org/matlab/vl_lbp.html), building an
LBP histogram for each patch 16x16 px (thus cellSize 16px).

Note that both the descriptors are computed on a specific _window_ of
the person image (resized to 128x64). This _window_ corresponds to
remove 8 px for each side and so computing the descriptor in a window
that is [9:120,9:56].

## Changelog

* 1.2 Aug. 2016 - Added pointer to new Hardoon's website for KCCA package.
* 1.1 Jan. 2015 - Added more information on WHOS descriptor
* 1.0 Sept. 2014 - Inital Release


## Citation

Please cite our paper with the following bibtex if you use our code:

``` latex
@article{lisanti:icdsc14,
author = {Lisanti, Giuseppe and Masi, Iacopo and {Del Bimbo}, Alberto},
title = {Matching People across Camera Views using Kernel Canonical Correlation Analysis},
booktitle = {Eighth ACM/IEEE International Conference on Distributed Smart Cameras},
year = {2014}, }
``` 

and Hardoon's paper:

``` latex
@article{hardoon:cca,
author = {Hardoon, David and Szedmak, Sandor and {Shawe-Taylor}, John},
title = {Canonical Correlation Analysis: An Overview with Application to Learning Methods},
booktitle = {Neural Computation},
volume = {Volume 16 (12)},
pages = {2639--2664},
year = {2004}, }
```


## References

[1] Giuseppe Lisanti , Iacopo Masi , Alberto Del Bimbo, Matching People across Camera Views using Kernel Canonical Correlation Analysis”, Eighth ACM/IEEE International Conference on Distributed Smart Cameras, 2014.

[2] G. Lisanti, I. Masi, A. D. Bagdanov, and A. Del Bimbo, "Person Re-identification by Iterative Re-weighted Sparse Ranking", IEEE Transactions on Pattern Analysis and Machine Intelligence 2014.

##License
KCCA-ReId code is Copyright (c) 2014 of  Giusppe Lisanti and Iacopo Masi *\<giuseppe.lisanti, iacopo.masi\>@unifi.it*.
[Media Integration and Communication Center (MICC), University of Florence. ](http://www.micc.unifi.it/vim)
