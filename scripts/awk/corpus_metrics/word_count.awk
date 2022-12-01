BEGIN {
  RS = "[ \n\t,.«»:)(;/?\"!@¿¡]+"
}

($0 ~ /^[-A-Za-záéíóúÁÉÍÓÚàÀâÂêÊôÔãÃõÕçÇñÑ]+$/) && ($0 !~ /\-\-/) && ($0 !~ /\-/) {
  if (NR == 1) wordAmount = 1
  else wordAmount++
}

END {
  print wordAmount
}
