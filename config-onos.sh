#!/bin/bash

echo "Choose your desired onos version"

array=($(ls -1 /home/s150924/onos_versions/ | grep onos-))

i=0

for dir_n in ${array[@]}
do
  ((i++))
  echo "$i) $dir_n"
done

read -r -p "Select version by the position [1-$i]: " response

version=${array[$((--response))]}

folder=$(ls -d /home/s150924/onos_versions/* | grep $version)

ln -sfn $folder/onos $HOME/onos

echo "ONOS_ROOT is pointing to $version and stablished as reference onos"

source ~/.bashrc

echo "$version's bash_profile was loaded."

echo "To change the version run config-onos again."
