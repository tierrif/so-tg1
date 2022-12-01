BEGIN {
    RS = "[ \n\t,.«»:)(;/?\"!@¿¡]+";
}

($0 ~ /^[-A-Za-záéíóúÁÉÍÓÚàÀâÂêÊôÔãÃõÕçÇñÑ]+$/ ) && ( $0 !~ /\-\-/) && ($0 !~ /\-/) {
    if (wordArr[$0]) wordArr[$0]++;
    else wordArr[$0] = 1;

    if (!previous) previous = $0;
    else {
        _pair = previous ":" $0
        if (wordPairArr[_pair]) wordPairArr[_pair]++
        else wordPairArr[_pair] = 1
        previous = $0
    }

    if (NR == 1) {
        tMax = length($0);
        tMin = length($0);
        biggest = $0
        smallest = $0
        wordAmount = 1
    } else if (length($0) > tMax) {
        tMax = length($0)
        biggest = $0
    } else if (length($0) < tMin) {
        tMin = length($0)
        smallest = $0
    }

    sum += length($0)
    wordAmount++
}

END {
    print "Máximo: " tMax
    print "Mínimo: " tMin
    print "Maior: " biggest
    print "Menor: " smallest
    print "Média: " sum / wordAmount
    print wordArr["la"]
    print wordPairArr["el:actual"]
}
