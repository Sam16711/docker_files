#!/bin/bash


path=$1
cd $path # Change to NGS folder

files=./*.py

py_files=$(ls $files)
#mv $files "$path"/joined # MOve all python programs to joined folder

#cd $path/joined #change to tmp directory in docker file


for i in $py_files:
do
	#new_f=$(echo '"$i"' | sed 's/ /_/g')
	#echo "'$i'"
	
	LSF_DOCKER_VOLUMES="$HOME:$HOME /storage1/fs1/x.cui/Active:/storage1/fs1/x.cui/Active" bsub -q general -n 8 -M 4GB -R "rusage[mem=8GB] span[hosts=1]" -a "docker1(sam16711/crispy:latest)" python3 $i 
done


