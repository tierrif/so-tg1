BEGIN {
    RS = "(( ! ?)|(! ! !)|( \\? ?)|(\\? \\? \\?)|(\\. \\. \\.)|( \\. ?))+";
}

{
    print $0 RT
}
