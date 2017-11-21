#!/bin/bash
echo "Please enter the length of the rectangle"
read LENGTH

echo "Please enter the width of the rectangle"
read WIDTH

ANSWER=$((LENGTH * WIDTH))
echo "The area of the rectangle is $ANSWER units squared"