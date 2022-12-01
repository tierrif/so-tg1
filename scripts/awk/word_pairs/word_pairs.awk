BEGIN {
  RS = "[ \n\t,.«»:)(;/?\"!@¿¡]+"
}

($0 ~ /^[-A-Za-záéíóúÁÉÍÓÚàÀâÂêÊôÔãÃõÕçÇñÑ]+$/ ) && ( $0 !~ /\-\-/) && ($0 !~ /\-/) {
  if (!previous) previous = $0
  else {
    _pair = previous ":" $0
    if (wordPairArr[_pair]) wordPairArr[_pair]++
    else wordPairArr[_pair] = 1
    previous = $0
  }
}

END {
  for (pair in wordPairArr) {
    split(pair, splitPair, ":")
    print splitPair[1], splitPair[2], wordPairArr[pair]
  }
}
