func void MEM_FATAL(var string MESSAGE) {
    MEMINT_FORCEERRORBOX = TRUE;
    MEM_SENDTOSPY(ZERR_TYPE_FATAL, MESSAGE);
}

func void WRITENOP(var int ADDR, var int LEN) {
    var int I;
    MEMORYPROTECTIONOVERRIDE(ADDR, LEN);
    REPEAT(I, LEN);
    MEM_WRITEBYTE((ADDR) + (I), ASMINT_OP_NOP);
    END;
}

func string CS2(var string S1, var string S2) {
    return CONCATSTRINGS(S1, S2);
}

func string CS3(var string S1, var string S2, var string S3) {
    return CS2(CS2(S1, S2), S3);
}

func string CS4(var string S1, var string S2, var string S3, var string S4) {
    return CS2(CS3(S1, S2, S3), S4);
}

func string CS5(var string S1, var string S2, var string S3, var string S4, var string S5) {
    return CS2(CS4(S1, S2, S3, S4), S5);
}

func string CS6(var string S1, var string S2, var string S3, var string S4, var string S5, var string S6) {
    return CS2(CS5(S1, S2, S3, S4, S5), S6);
}

func string CS7(var string S1, var string S2, var string S3, var string S4, var string S5, var string S6, var string S7) {
    return CS2(CS6(S1, S2, S3, S4, S5, S6), S7);
}

func string CS8(var string S1, var string S2, var string S3, var string S4, var string S5, var string S6, var string S7, var string S8) {
    return CS2(CS7(S1, S2, S3, S4, S5, S6, S7), S8);
}

func string CS9(var string S1, var string S2, var string S3, var string S4, var string S5, var string S6, var string S7, var string S8, var string S9) {
    return CS2(CS8(S1, S2, S3, S4, S5, S6, S7, S8), S9);
}

func string CS10(var string S1, var string S2, var string S3, var string S4, var string S5, var string S6, var string S7, var string S8, var string S9, var string S10) {
    return CS2(CS9(S1, S2, S3, S4, S5, S6, S7, S8, S9), S10);
}

func string CS11(var string S1, var string S2, var string S3, var string S4, var string S5, var string S6, var string S7, var string S8, var string S9, var string S10, var string S11) {
    return CS2(CS10(S1, S2, S3, S4, S5, S6, S7, S8, S9, S10), S11);
}

func string CS12(var string S1, var string S2, var string S3, var string S4, var string S5, var string S6, var string S7, var string S8, var string S9, var string S10, var string S11, var string S12) {
    return CS2(CS11(S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11), S12);
}

func string CS13(var string S1, var string S2, var string S3, var string S4, var string S5, var string S6, var string S7, var string S8, var string S9, var string S10, var string S11, var string S12, var string S13) {
    return CS2(CS12(S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12), S13);
}

func string CS14(var string S1, var string S2, var string S3, var string S4, var string S5, var string S6, var string S7, var string S8, var string S9, var string S10, var string S11, var string S12, var string S13, var string S14) {
    return CS2(CS13(S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13), S14);
}

func string CS15(var string S1, var string S2, var string S3, var string S4, var string S5, var string S6, var string S7, var string S8, var string S9, var string S10, var string S11, var string S12, var string S13, var string S14, var string S15) {
    return CS2(CS14(S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14), S15);
}

func string CS16(var string S1, var string S2, var string S3, var string S4, var string S5, var string S6, var string S7, var string S8, var string S9, var string S10, var string S11, var string S12, var string S13, var string S14, var string S15, var string S16) {
    return CS2(CS15(S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15), S16);
}

