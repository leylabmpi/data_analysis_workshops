Ley Lab Data Analysis Workshop
================

A workshop covering the basic tools of bioinformatics



# Overview of tools

## using the server & compute cluster

* compute resources overview
  * server
  * compute cluster
* projects
* using the command line
  * ssh 
  * simple navigation
  * top & htop
  * SGE job submission
    * qstat
    * ganglia
* conda environments
  * why
  * how 
* jupyter notebooks
  * setup
  * features
* data analysis with R
  * basics
  * essential R packages
    * dplyr, tidyr, & ggplot
* git
  * why?
  * Gitlab & Github
  * how?
* other useful tools
  * Rstudio
    * knitr
  * [omicstools.com](https://omictools.com/)
  * Shiny
  * Plotly
  

## command

# Interactive demo

A demo on using notebooks, running a simple QIIME analysis, & 

See [notebooks](./notebooks)




# Helpful code

## Server

### Example `~/.ssh/config` file

```
ServerAliveInterval 30
ServerAliveCountMax 3

host rick
    User nyoungblut
    HostName rick.eb.local
    PubkeyAuthentication yes
    LocalForward 9701 localhost:9701
    LocalForward 9702 localhost:9702
    LocalForward 9703 localhost:9703
    LocalForward 9704 localhost:9704
    LocalForward 9705 localhost:9705
    LocalForward 9706 localhost:9706
    LocalForward 9707 localhost:9707
    LocalForward 9708 localhost:9708
```

For ssh onto rick: `ssh rick`

## Jupyter

### Starting up jupyter notebook with port forwarding

``` bash
jupyter-n () {
    if [ -z "$1" ] || [ -z "$2" ]
    then
        echo "Usage: jupyter-n notebook_name port_number"
    else
        screen -S "$1.ipynb" jupyter notebook --no-browser --port "$2";
    fi
}
```

