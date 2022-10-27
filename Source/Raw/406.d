instance DIA_BAU_MILITIAMINE_SQ311_HELLO(C_INFO) {
    NR = 1;
    CONDITION = DIA_BAU_MILITIAMINE_SQ311_HELLO_CONDITION;
    INFORMATION = DIA_BAU_MILITIAMINE_SQ311_HELLO_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_BAU_MILITIAMINE_SQ311_HELLO_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && ((LOG_GETSTATUS(MIS_SQ311)) != (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BAU_MILITIAMINE_SQ311_HELLO_INFO() {
    if ((SQ311_FIGHTWITHLEWKO) == (0)) {
        RANDOM = HLP_RANDOM(2);
        if (NPC_WASINSTATE(SELF, 0xb486)) {
            if ((RANDOM) == (0)) {
                AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
                B_SAY(SELF, OTHER, "$SQ311_MilitiaMiner_LeaveMeV1");
            } else if ((RANDOM) == (1)) {
                AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
                B_SAY(SELF, OTHER, "$SQ311_MilitiaMiner_LeaveMeV3");
            };
        } else if ((RANDOM) == (0)) {
            AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
            B_SAY(SELF, OTHER, "$SQ311_MilitiaMiner_LeaveMeV2");
        } else if ((RANDOM) == (1)) {
            AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
            B_SAY(SELF, OTHER, "$SQ311_MilitiaMiner_LeaveMeV4");
        };
    };
    B_SAY(SELF, OTHER, "$IMBUSY_CALM");
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

var int DIA_BAU_MILITIAMINE_SQ311_HELLO_INFO.RANDOM = 0;
func void B_ASSIGNAMBIENTINFOS_BAU_MILITIAMINE(var C_NPC SLF) {
    DIA_BAU_MILITIAMINE_SQ311_HELLO.NPC = HLP_GETINSTANCEID(SLF);
}

