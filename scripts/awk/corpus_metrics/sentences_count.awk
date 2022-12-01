BEGIN {
  RS = "(( ! ?)|(! ! !)|( \\? ?)|(\\? \\? \\?)|(\\. \\. \\.)|( \\. ?))+"
}

{
  if (NR == 1) sentenceCount = 1
  else sentenceCount++
}

END {
  print sentenceCount
}
