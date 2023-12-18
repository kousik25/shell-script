#! /bin/bash

echo "Enter a word"
text=$1
word=$(echo  "$text" | wc -w)
echo "Number of Words = $word" ##Displays the no of words from text