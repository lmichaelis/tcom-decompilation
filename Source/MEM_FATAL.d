func void MEM_FATAL(var string MESSAGE) {
    MEMINT_FORCEERRORBOX = TRUE;
    MEM_SENDTOSPY(ZERR_TYPE_FATAL, MESSAGE);
}

func string CS2(var string S1, var string S2) {
    return CONCATSTRINGS(S1, S2);
}

func string CS5(var string S1, var string S2, var string S3, var string S4, var string S5) {
    return CS2(CS4(S1, S2, S3, S4), S5);
}

func string CS11(var string S1, var string S2, var string S3, var string S4, var string S5, var string S6, var string S7, var string S8, var string S9, var string S10, var string S11) {
    return CS2(CS10(S1, S2, S3, S4, S5, S6, S7, S8, S9, S10), S11);
}

