#! /bin/bash
set -o errexit
number=1
dir="Q5Test"
if [ ! -d $dir ]
then
mkdir $dir
fi
cd $dir
  truncate -s 10M rootfile
  size=10
while true;
do
      cp rootfile file$number
      echo "Number of duplicated files--> "$number "  total size= "$size"MB"
     number=$(( number+1 ))
     size=$((size+10))
done
