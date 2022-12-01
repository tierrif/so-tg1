BEGIN {
  RS = "[ \n\t,.«»:)(;/?\"!@¿¡]+"
}

($0 ~ /^[-A-Za-záéíóúÁÉÍÓÚàÀâÂêÊôÔãÃõÕçÇñÑ]+$/ ) && ( $0 !~ /\-\-/) && ($0 !~ /\-/) {
  if (!wordArr[$0]) wordArr[$0] = 1
  else wordArr[$0]++
}

END {
  for (word in wordArr) {
    print word, wordArr[word]
  }
}
