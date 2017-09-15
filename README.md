Ley Lab Data Analysis Workshop
================

A workshop covering the basic tools of bioinformatics

# Install

## Workshop material

Clone this repository:

`git clone https://github.com/leylabmpi/data_analysis_workshops.git`

Move to the repo directory:

`cd data_analysis_workshops`

## Install miniconda & create conda environments

> Note: this will install conda into the `data_analysis_workshops` directory.
Thus, it will create a conda install (& conda environments) just for this workshop.
If you already have a conda environment set up, This will override that other conda
install, but just within the `data_analysis_workshops` directory.

The `conda_env_setup` repository:

`git clone https://github.com/leylabmpi/conda_env_setup.git`

Move to the repo directory:

`cd conda_env_setup`

Follow the instructions listed in the `README.md` file to install conda & set up some conda environments:

`cat README.md`


# Workshop materials

The workshop materials consist of Jupyter notebooks.

You can view the Jupyter notebooks on GitHub. See the [notebooks directory](./notebooks/)

## To start up Jupyter and run through the notebooks:

First, `ssh` onto the server using port fowarding:

`ssh -L XXXX:localhost:XXXX USERNAME@rick.eb.local`

> Note: for the next command, change "XXXX" to a number between 7000 and 20000. Also, change "USERNAME" to your user name.

Move to the `data_analysis_workshops` directory.

Start up Jupyter:

`screen jupyter notebook --no-browser --port XXXX`

> Note: make sure to change "XXXX" to the port you used for ssh-ing (described above).
> Note: the "screen" command was used so that Jupyter will still run even after you disconnect from the server. 

Jupyter should start up. To get the command line back (detatch from screen), press:
ctrl-a (then) d

Connect on your browser (preferably Chrome):

* In your browser url box, type: "127.0.0.1:XXXX"

> Note: "XXXX" is the port number you used previously

## Material description

The tutorial notebooks are in `./notebooks/qiime_tutorial/`.

All other notebooks will be used for a presentation, but feel free to run through those notebooks too! 


***

# Helpful code

See [helpful_code.md](./bin/helpful_code.md)