instance DIA_WORKER2_EXIT(C_INFO) {
    NPC = 0xd5d4;
    NR = 999;
    CONDITION = DIA_WORKER2_EXIT_CONDITION;
    INFORMATION = DIA_WORKER2_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_WORKER2_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_WORKER2_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_WORKER2_BUSY(C_INFO) {
    NPC = 0xd5d4;
    NR = 1;
    CONDITION = DIA_WORKER2_BUSY_CONDITION;
    INFORMATION = DIA_WORKER2_BUSY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_WORKER2_BUSY_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ309)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x1274d))) && ((NPC_KNOWSINFO(OTHER, 0x12d2a)) == (FALSE))) && ((NPC_KNOWSINFO(OTHER, 0x1282a)) == (FALSE))) {
        return FALSE;
    };
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WORKER2_BUSY_INFO() {
    DIA_IMBUSY_CALM();
}

instance DIA_WORKER2_SQ309(C_INFO) {
    NPC = 0xd5d4;
    NR = 1;
    CONDITION = DIA_WORKER2_SQ309_CONDITION;
    INFORMATION = DIA_WORKER2_SQ309_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Maybe you know something about the golden Innoses?";
}

func int DIA_WORKER2_SQ309_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ309)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x1274d))) && ((NPC_KNOWSINFO(OTHER, 0x12d2a)) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WORKER2_SQ309_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Worker2_SQ309_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Worker2_SQ309_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Worker2_SQ309_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Worker2_SQ309_03_04");
    AI_LOGENTRY(TOPIC_SQ309, LOG_SQ309_WORKER2_NOINFO);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xf3b1);
}

