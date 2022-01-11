#!/usr/bin/env bash
# Just a simple Hello World


case $1 in 
    -g ) opt_k="-n" ;;
    -n ) opt_k="-size" ;;
esac

case $2 in 
    -a ) opt_r="-r" ;;
    -b ) opt_r="" ;;
esac
echo sort opt_k opt_r;