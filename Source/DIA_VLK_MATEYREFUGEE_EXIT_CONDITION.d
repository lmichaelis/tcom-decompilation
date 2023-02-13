func int DIA_VLK_MATEYREFUGEE_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_VLK_MATEYREFUGEE_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VLK_MATEYREFUGEE_WAITING(C_INFO) {
    NR = 1;
    CONDITION = DIA_VLK_MATEYREFUGEE_WAITING_CONDITION;
    INFORMATION = DIA_VLK_MATEYREFUGEE_WAITING_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_VLK_MATEYREFUGEE_WAITING_CONDITION() {
    if (NPC_ISINSTATE(SELF, 61599)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLK_MATEYREFUGEE_WAITING_INFO() {
    var int Q202_INFOABOUTMATEY;
    var int RNGANWSER;
    var int RNGANWSER2;
    if ((KAPITEL) == (5)) {
        RNGANWSER2 = HLP_RANDOM(3);
        if ((RNGANWSER2) == (0)) {
            AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
            B_SAY(SELF, OTHER, "$Q202_WAITING_V5");
        } else if ((RNGANWSER2) == (1)) {
            AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
            B_SAY(SELF, OTHER, "$Q202_WAITING_V6");
        } else if ((RNGANWSER2) == (2)) {
            AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
            B_SAY(SELF, OTHER, "$Q202_WAITING_V7");
        };
    };
    RNGANWSER = HLP_RANDOM(4);
    if ((RNGANWSER) == (0)) {
        if ((HERO.GUILD) == (GIL_NONE)) {
            AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
            B_SAY(SELF, OTHER, "$Q202_WAITING_V1");
        } else {
            AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
            B_SAY(SELF, OTHER, "$Q202_WAITING_V4");
        };
    };
    if ((RNGANWSER) == (1)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$Q202_WAITING_V2");
    };
    if ((RNGANWSER) == (2)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        B_SAY(SELF, OTHER, "$Q202_WAITING_V3");
    };
    if ((RNGANWSER) == (3)) {
        AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
        B_SAY(SELF, OTHER, "$Q202_WAITING_V4");
    };
    if ((Q202_INFOABOUTMATEY) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_Q202)) == (LOG_RUNNING)) {
            Q202_INFOABOUTMATEY = TRUE;
            AI_LOGENTRY(TOPIC_Q202, LOG_Q202_QUEUE);
        };
    };
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
}

func void B_ASSIGNAMBIENTINFOS_VLK_MATEYREFUGEE(var C_NPC SLF) {
    DIA_VLK_MATEYREFUGEE_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_VLK_MATEYREFUGEE_WAITING.NPC = HLP_GETINSTANCEID(SLF);
}

