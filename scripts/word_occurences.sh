#!/bin/bash

gawk -f ./awk/word_occurences/word_occurences.awk < ../corpus_txt/text.txt | sort > ../words_dict/words.txt

echo "words gerado em words_dict/words.txt."
