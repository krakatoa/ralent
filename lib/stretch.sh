#!/bin/bash
#stretch

mpg123 -w "$2.tmp" "$1"
rm "$1"
rubberband --tempo "$3" --crisp 0 "$2.tmp" "$2"
rm "$2.tmp"
