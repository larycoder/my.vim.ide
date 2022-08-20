#!/usr/bin/bash

# global parameters
VIMDIR="$HOME/.vim"

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
    cp -r ./setup/* $VIMDIR/;
    sed_cmd=$(echo $VIMDIR | sed 's/\//\\\//g' | sed 's/\./\\./g');
    sed_cmd="s/<VIMDIR>/$sed_cmd/g";
    sed -i "$sed_cmd" $VIMDIR/vimrc;
    mv $VIMDIR/vimrc $VIMDIR/init.vim; # neovim call init instead of vimrc
    if [[ ! -d $VIMDIR/pluged ]]; then mkdir $VIMDIR/pluged; fi;
    echo "Finish save process.";
}

# call install plugins
function exeCommand() { # still have big bug
    echo "Start to run vim plug...";
    vim -es -u $VIMDIR/init.vim -i NONE -c "PlugClean" -c "qa";
    vim -es -u $VIMDIR/init.vim -i NONE -c "PlugInstall" -c "qa";
    echo "Current version does not support coc.nvim setup, please run it manually...";
    echo "Finish exec command.";
}

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

