#!/bin/bash

pwd > basedir.txt
BASEDIR=$(pwd)
cp basedir.txt $BASEDIR/Templates 
cp basedir.txt $BASEDIR/Logs/Pro
