---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Python & R on Cheyenne/Casper"
subtitle: ""
summary: "A simple guide to set up Jupyter on NCAR's supercomputers Cheyenne and Casper to use R and Python"
authors: [admin]
tags: [Python, R]
categories: [Skill Share]
date: 2020-11-13T00:00:00-05:00

featured: true
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: "https://www2.cisl.ucar.edu/resources/computational-systems/cheyenne"
  focal_point: smart
  preview_only: true

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

I am lucky enough to have an access to NCAR's super computing facilities - Cheyenne allows me to run CESM simulation with hundreds of cores while Casper streamlines my data processing, analysis, and visualization without wasting time to transfer large files. But, setting up the correct software to full deploy these machines are a pain in the neck. Here I would like to share how I set up my `Jupyter` environment to run `R` and `Python` on these two supercomputers.

## What does NCAR say

NCAR has been putting a lot of efforts in modernizing their legendary NCL libraries and translating them into Python packages. In this [guide](https://www2.cisl.ucar.edu/resources/python-–-ncar-package-library), they lay out the easiest way to use `Python` with `Jupyter` on Casper.

The idea is to use `module` the default environment managing software on Casper to load the pre-bundled package:

    module load ncarenv

Then, you can run

    ncar_pylib -p 20200417

to check what packages are pre-installed. If you are happy with it, activate the default package library by invoking

    ncar_pylib

It should allow you to use `Python` and other common packages including `matplotlib`.

## Running `Jupyter` on Casper

NCAR is experimenting a simple way to run `Jupyter` using `JupyterHub` ([Visit the JupyterHub documentation](https://www2.cisl.ucar.edu/resources/jupyterhub-ncar)) which can bypass using the `Terminal`.

Alternatively, the old-fashion `IPython` approach to run `Jupyter` can also be found [in the Jupyter and IPython documentation](https://www2.cisl.ucar.edu/resources/jupyter-and-ipython).

## I wanted to include `R`

To include more packages and other software, I needed to create my own environment `my_npl_clone`. For that, I invoked,

    ncar_pylib -c 20200417 /glade/work/$USER/my_npl_clone

to create a clone of the environment `20200417`.

Activating the new environment with

    ncar_pylib my_npl_clone

I also install `Miniconda` - a package management software for `Python` and `R`, which helps me to create `R` directories under my home dir and enables installing package without the `root` access right.

### Installing `Miniconda`

In my `$HOME` directory, I first download the installation file for `Miniconda`,

    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

then install it by invoking,

    bash Miniconda3-latest-Linux-x86_64.sh

reviewing the documentation and set up the locations.

After the installation, I can see they modified my `.bashrc`. To use `Miniconda`, I had to run

    source .bashrc

(This part may be a bit different for you depending on your settings. Feel free to contact me for details.)

For better file management, I created a new environment for `R` and named it `r` based on two preset library sets `r-essentials` and `r-base`,

    conda create -n r -c conda-forge r-base=4.0.2

The `conda` environment is ready to use by running,

    conda activate r

By adding `R` and `my_npl_clone` to `Jupyter`'s kernel, I invoked,

    conda install -c r r-irkernel
    ncar_pylib --kernel my_npl_clone

Both should be online for `Jupyter`.

### Bonus: Running `Rstudio` on Cheyenne/Casper

I am a big fan of `RStudio` - an integrated development environment for `R`. With `Miniconda` it can be installed on Cheyenne/Casper easily by invoking,

      conda create -n rstudio -c r rstudio
