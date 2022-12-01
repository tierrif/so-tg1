BEGIN {
  RS = "[ \n\t,.«»:)(;/?\"!@¿¡]+"
}

($0 ~ /^[-A-Za-záéíóúÁÉÍÓÚàÀâÂêÊôÔãÃõÕçÇñÑ]+$/) && ($0 !~ /\-\-/) && ($0 !~ /\-/) {
  if (!wordArr[$0]) {
    wordArr[$0] = 1
    if (!wordAmount) wordAmount = 1
    else wordAmount++
  }
}

END {
  print wordAmount
}
