Ley Lab Data Analysis Workshop
================

A workshop covering the basic tools of bioinformatics:

1) Jupyter notebooks
2) QIIME
3) Bas



# Helpful code


#### Starting up jupyter notebook with port forwarding
~~~
jupyter-n () {
    if [ -z "$1" ] || [ -z "$2" ]
    then
        echo "Usage: jupyter-n notebook_name port_number"
    else
        screen -S "$1.ipynb" jupyter notebook --no-browser --port "$2";
    fi
}
~~~