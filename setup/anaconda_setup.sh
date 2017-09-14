#!/bin/bash
# anaconda install & setup

# download
wget https://repo.continuum.io/archive/Anaconda3-4.4.0-Linux-x86_64.sh

# install
bash Anaconda3-4.4.0-Linux-x86_64.sh -b -p `pwd`"/anaconda3"
## delete installer
rm -f Anaconda3-4.4.0-Linux-x86_64.sh

# no backups
touch ./anaconda3/DO_NOT_BACKUP_THIS_FOLDER

# add conda to your path
CONDA_PATH=`pwd`"/anaconda3/bin"
export PATH=$CONDA_PATH:$PATH

# install essential packages into root environment
## nb_conda
conda install -y nb_conda
## jupyter extensions
conda install -y -c conda-forge jupyter_nbextensions_configurator
### this next part is needed to avoid "Jupter already running" error
pip install jupyter_contrib_nbextensions
jupyter contrib nbextensions install --sys-prefix --skip-running-check

# create conda environemnts
conda create -y -n py3 python=3
conda create -y -n py2 python=2


