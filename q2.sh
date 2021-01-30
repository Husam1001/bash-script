#! /bin/bash
set -o errexit
number=1
dir="Q2Test"
if [ ! -d $dir ]
then
mkdir $dir
fi
cd $dir
while true;
do
      mkdir $number
      cd $number
      echo "Number of subdirectory created--> "$number
     number=$(( number+1 ))
done || exit 1
kill$$
