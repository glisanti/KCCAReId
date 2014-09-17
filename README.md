KCCA-ReId
========

We provided the implementation of the paper Giuseppe Lisanti , Iacopo Masi , Alberto Del Bimbo, "Matching People across Camera Views using Kernel Canonical Correlation Analysis”, Eighth ACM/IEEE International Conference on Distributed Smart Cameras, 2014.

![KCCA-ReId](http://www.micc.unifi.it/masi/kcca.png)

##Requirements 
You need the following software to run the code:

1. MATLAB (Windows, Unix version is the same)
2. [Hardoon KCCA code package.](http://www.davidroihardoon.com/Professional/Code_files/kcca_package.tar.gz) (4.3 KB)
3. [Descriptors computed as described in the paper for the VIPeR and PRID dataset.](http://www.micc.unifi.it/lisanti/downloads/kccareid_data.zip) (229 MB)


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



## Citation

Please cite our paper with the following bibtex if you use our dataset:

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
volume = {Volume 16 (12)}
pages = {2639--2664}
year = {2004}, }
```


## References

[1] Giuseppe Lisanti , Iacopo Masi , Alberto Del Bimbo, Matching People across Camera Views using Kernel Canonical Correlation Analysis”, Eighth ACM/IEEE International Conference on Distributed Smart Cameras, 2014.

##License
KCCAReId code is Copyright (c) 2013 of  Giusppe Lisanti and Iacopo Masi *\<giuseppe.lisanti, iacopo.masi\>@unifi.it*.
[Media Integration and Communication Center (MICC), University of Florence. ](http://www.micc.unifi.it/vim)
