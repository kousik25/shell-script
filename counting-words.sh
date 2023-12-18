#! /bin/bash

#echo "Enter a word"
#text=$1
#word=$(echo -n "$text" | wc -w)
#echo "Number of Words = $word" ##Displays the no of words from text
#!/usr/bin/bash

# path to the file
#file_path="/Users/DKOUSIK/Desktop/demo.txt"

# using wc command to count number of lines
number_of_lines=`wc --lines < This is second line`

# using wc command to count number of words
number_of_words=`wc --word < This is second line`

# Displaying number of lines and number of words
echo "Number of lines: $number_of_lines"
echo "Number of words: $number_of_words"