instance DIA_ARTHUR_BUSY(C_INFO) {
    NPC = 52566;
    NR = 1;
    CONDITION = DIA_ARTHUR_BUSY_CONDITION;
    INFORMATION = DIA_ARTHUR_BUSY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ARTHUR_BUSY_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 61599)) && ((SQ225_ARTHURINPRISON) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARTHUR_BUSY_INFO() {
    DIA_IMBUSY_ANGRY();
}

