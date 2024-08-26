# how_to_UofC_ARC
How to use ARC in the university of Calgary


# how_to_ARC

This is a guide on how to use ARC. Reference: https://rcs.ucalgary.ca/ARC_Cluster_Guide

Steps on using ARC:
* Gaining access from support@hpc.ucalgary.ca
* Having a VPN if you're working off-campus (University of Calgary General VPN)
* Installing a code editor such as MobaXterms or VScode. Personall preference: have both. For downloading and file organization MobaXTerms is much better than VScode. VScode on the other hand is more useful for coding.
* Add the ARC cluster SSH to your environment.
* Enter your account.
* Build a new environment (conda create -n <your envir>)
* Install packages (conda install <...>)
* Check Python version (which python)
* Upload your .py code and your files.
* Create a job with the .slurm extention and UNIX format. One sample is attached to this directory.
* In the job, you can define a base directory, and define all the different paths, or do them in the code.
* 
