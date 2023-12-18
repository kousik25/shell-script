#! /bin/bash

echo "Enter a word"
word=$(echo -n "$text" | wc -w)
echo "Number of Words = $word" ##Displays the no of words from text