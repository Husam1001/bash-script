#! /bin/bash
set -o errexit
number=1
dir="Q3Test"
if [ ! -d $dir ]
then
mkdir $dir
fi
cd $dir
truncate -s 1 rootfile
while true;
do
      cp rootfile file$number
      echo "Number of duplicated files--> "$number
     number=$(( number+1 ))
done
