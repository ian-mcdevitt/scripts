#!/bin/bash

function usage {
    echo "usage: $0 [branch]"
    echo "  branch  Specifies which branch in the current git repository to fame"
    exit 1
}

[ -z $1 ] && { usage; }

git fame --timeout=-1 --branch=$1 --exclude=Files/*,X.png,5.png,5.5.png,4.png,4.7.png,4-1.png,3.xcdatamodel/contents,2.xcdatamodel/contents,android,ios,node_modules,package-lock.json

