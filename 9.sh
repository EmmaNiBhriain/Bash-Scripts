#!/bin/bash
echo "Please enter name of file"
read filename

grep -io [aeiou] $filename | wc -l
