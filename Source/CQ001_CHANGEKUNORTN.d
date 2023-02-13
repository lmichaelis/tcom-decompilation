func void CQ001_CHANGEKUNORTN() {
    if (((CQ001_CHESSBOOK) == (4)) && ((SQ207_KUNORESULT) >= (1))) {
        PRINTD("Idzie do starego miasta");
        NPC_EXCHANGEROUTINE(VLK_6127_KUNO, "OLDCITY");
    };
}

