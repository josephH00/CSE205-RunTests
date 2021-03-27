#!/bin/bash

# Joseph Hand CSE205 1/15/2021
# javac Assignment*.java && java Assignment* < inputN.txt > myoutN.txt && diff outputN.txt myoutN.txt
if [ $# -lt 2 ]
  then
    echo "This script will compile and compare the output of the assignment (whose name is formatted as Assignment#.java where # is the assignment number) against the provided test cases (formated as input#.txt and output#.txt) used in CSE205"
    echo "Usage:"
    echo "./runTests.sh [ASSIGNMENT NUMBER] [NUMBER OF TEST CASES]"
    echo
    echo "Example:"
    echo "   To test Assignment 2 against 4 test cases where Assignment2.java and the input#/output# files are in the same directory run './runTests.sh 2 4'"
    exit
fi

rm *.class
javac Assignment$1.java
for ((iter = 1 ; iter <= $2 ; iter++));
do
    inFileName="input${iter}.txt"
    myOutFileName="myout${iter}.txt"
    compareFile="output${iter}.txt"

    echo
    echo Test Case $iter:
    java Assignment$1 < $inFileName > $myOutFileName && diff $compareFile $myOutFileName
done
