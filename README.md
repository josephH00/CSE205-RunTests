# CSE205-RunTests
Simple Bash script for running the CSE205 assignment test cases for *nix derivatives (including MacOS)

## Usage
Clone or download *runTests.sh*
Make sure to have both the input#.txt and output#.txt files in the same directory as well as the Assignment#.java file.
Run:
```
./runTests.sh # ##
```
Where # is the assignment number and ## is the number of cases to test against

---
If it shows something like:
```
Test Case 1:
Test Case 2:
4c4
< The sum of negative integers is -0
---
> The sum of negative integers is -1
Test Case 3:
```
This means you passed the 1st and 3rd test case, but the second test had a problem and you need to check your code.
