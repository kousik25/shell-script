#! /bin/bash

R="\e[31m"

echo "Enter a word"
text=$1
word=$(echo $R "$text" | wc -w)
echo "Number of Words = $word" ##Displays the no of words from text