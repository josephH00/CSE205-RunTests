#!/bin/bash

# Joseph Hand CSE205 1/15/2021
# javac Assignment*.java && java Assignment* < inputN.txt > myoutN.txt && diff outputN.txt myoutN.txt
javac *.java
for ((iter = 1 ; iter <= $1 ; iter++));
do
    inFileName="input${iter}.txt"
    myOutFileName="myout${iter}.txt"
    compareFile="output${iter}.txt"
    java Assignment* < $inFileName > $myOutFileName && diff $compareFile $myOutFileName
done