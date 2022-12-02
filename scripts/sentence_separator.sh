#!/bin/bash

gawk -f ./awk/sentence_separator/sentence_separator.awk < ../corpus/text.txt > ../corpus_txt/text.txt

echo "corpus_txt gerado em corpus_txt/text.txt."
