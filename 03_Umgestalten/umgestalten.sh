#!/bin/bash
inputFile="files/Export.spl";
outputFile="files/output.txt";

# grep -w "^2.*'[A-Z][0-9][0-9][0-9][0-9][0-9][0-9]'" $inputFile | cut -d$'\t' -f3,4 >> $outputFile;


grep -w "^2.*'[A-Z][0-9][0-9][0-9][0-9][0-9][0-9]'" $inputFile | cut -d$'\t' -f1,2,3,4 >> $outputFile;
