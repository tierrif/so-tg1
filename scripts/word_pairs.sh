#!/bin/bash

gawk -f ./awk/word_pairs/word_pairs.awk < ../corpus_txt/text.txt | sort > ../words_dict/words_pairs.txt

echo "words_pairs gerado em words_dict/words_pairs.txt."