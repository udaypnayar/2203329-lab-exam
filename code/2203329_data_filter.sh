#!/bin/bash


#Taking in all the positional arguments
filename=$1
fieldname=$2
fieldval=$3
fname=${filename:0:2}
outputfile="$fname""_""$fieldname""_""$fieldval.csv"



#The first line of the output file
echo -n "$filename, $fieldname, $fieldval, " > $outputfile
grep -iw $fieldval $filename | wc -l >> $outputfile #number of lines satisfying the condition


#The second line of the output file
cat $filename | head -n1 >> $outputfile #the list of all column headers

echo -e "\n\n" >> $outputfile

#All the employee records satisfying that same condition
grep -iw $fieldval $filename >> $outputfile






