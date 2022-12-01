#!/bin/bash

char_count=`wc -c ../corpus_txt/text.txt | cut -d ' ' -f 1`
non_empty_line_count=`cat ../corpus_txt/text.txt | sed -e '/^\s*$/d' | wc -l`
word_count=`gawk -f ./awk/corpus_metrics/word_count.awk < ../corpus_txt/text.txt`
word_count_unique=`gawk -f ./awk/corpus_metrics/unique_word_count.awk < ../corpus_txt/text.txt`
fraction_word_count=`echo "scale=2; $word_count_unique / $word_count" | bc`
sentences_count=`gawk -f ./awk/corpus_metrics/sentences_count.awk < ../corpus_txt/text.txt`
sentences_count_unique=`gawk -f ./awk/corpus_metrics/unique_sentences_count.awk < ../corpus_txt/text.txt`
fraction_sentences_count=`echo "scale=2; $sentences_count_unique / $sentences_count" | bc`

printf "Número de caracteres: $char_count\n"\
"Número de linhas não vazias: $non_empty_line_count\n"\
"Número de palavras: $word_count\n"\
"Número de palavras únicas: $word_count_unique\n"\
"Quociente entre palavras diferentes e únicas: $fraction_word_count\n"\
"Número de frases: $sentences_count\n"\
"Número de frases únicas: $sentences_count_unique\n"\
"Quociente entre frases diferentes e únicas: $fraction_sentences_count\n" > ../corpus_info/corpus_info.txt

echo "corpus_info gerado em corpus_info/corpus_info.txt."