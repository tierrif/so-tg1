BEGIN {
  RS = "(( ! ?)|(! ! !)|( \\? ?)|(\\? \\? \\?)|(\\. \\. \\.)|( \\. ?))+"
}

{
  if (!sentenceArr[$0]) {
    sentenceArr[$0] = 1
    if (!sentenceCount) sentenceCount = 1
    else sentenceCount++
  }
}

END {
  print sentenceCount
}
