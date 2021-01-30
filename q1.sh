#! /bin/bash
set -o errexit
number=1
dir="Q1Test"
if [ ! -d $dir ]
then
mkdir $dir
fi
cd $dir
while true;
do
      ext=${ext}$(($number%10))
      touch abc$ext
      echo "This is OS hacking test" >>abc$ext
      echo "Number of file created--> "$number
     number=$(( number+1 ))
done
