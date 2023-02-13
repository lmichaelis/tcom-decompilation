func void EVT_Q201_SEWERSCHECK() {
    if ((Q201_SEWERSWAY) == (FALSE)) {
        PRINTD("Skrypt");
        Q201_SEWERSWAY = TRUE;
        WLD_SENDTRIGGER("Q201_MOVER_SEWERSCHECK");
    };
}

