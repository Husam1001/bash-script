#!/bin/bash
set -o errexit
recurcive(){
    echo $1;
    recurcive $(($1+1));
}
recurcive 1;
