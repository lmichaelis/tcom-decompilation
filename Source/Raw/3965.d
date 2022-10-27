instance DIA_ERVALT_BUSY(C_INFO) {
    NPC = 0xcd53;
    NR = 1;
    CONDITION = DIA_ERVALT_BUSY_CONDITION;
    INFORMATION = DIA_ERVALT_BUSY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ERVALT_BUSY_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && ((SQ225_ERVALTINPRISON) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ERVALT_BUSY_INFO() {
    DIA_IMBUSY_ANGRY();
}

