#!/usr/bin/bash

# global parameters
VIMDIR="~/.vim"

# setup usage function
function usage() {
    echo "This is setup usages: ";
    echo "--vim-dir : configuration directory of vim [default: ~/.vim]";
    echo "";
    echo "Hope you have a good setup time !";
}

# load argument
function args() {
    while [[ $# -gt 0 ]]; do
        param=$1;
        shift; # load next argv

        # vim directory
        if [[ $param == --vim-dir=* ]]; then
            VIMDIR=${param:10};
        elif [[ $param == --vim-dir ]]; then
            VIMDIR=$1;
            shift;
        fi
    done
}

# setup vimrc directory + configuration files
function saveConfig() {
    echo "Start to save configuration to vim...";
    VIMDIR=`realpath $VIMDIR`;
    cp -r ./install/* $VIMDIR/;
    sed_cmd=$(echo $VIMDIR | sed 's/\//\\\//g');
    sed_cmd="s/<VIMDIR>/$sed_cmd/g";
    cat ./install/vimrc | sed "$sed_cmd" > $VIMDIR/vimrc;
    mkdir $VIMDIR/plugged;
    echo "Finish save process.";
}

# call install plugins
function exeCommand() {
    echo "Start to exec vim command in command_list...";
    TEMP=/tmp/.vim_ide_randrom.$;
    vim -s ./command_list.txt $TEMP;
    echo "Finish exec command.";
}

# install necessary packages
# note: update command_list for install coc.vim plugins.

# driver
case $1 in
    -h|--help)
        usage;
        ;;
    *)
        args $@;
        saveConfig;
        exeCommand;
        echo "Everything is done.";
        ;;
esac

