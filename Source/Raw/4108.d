instance DIA_BANDITWS_03_EXIT(C_INFO) {
    NPC = 0xe2f0;
    NR = 999;
    CONDITION = DIA_BANDITWS_03_EXIT_CONDITION;
    INFORMATION = DIA_BANDITWS_03_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_BANDITWS_03_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_BANDITWS_03_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BANDITWS_03_Q402_BUSY(C_INFO) {
    NPC = 0xe2f0;
    NR = 1;
    CONDITION = DIA_BANDITWS_03_Q402_BUSY_CONDITION;
    INFORMATION = DIA_BANDITWS_03_Q402_BUSY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_BANDITWS_03_Q402_BUSY_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && ((Q402_SPAWNBANDITS) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BANDITWS_03_Q402_BUSY_INFO() {
    DIA_IMBUSY_ANGRY();
}

