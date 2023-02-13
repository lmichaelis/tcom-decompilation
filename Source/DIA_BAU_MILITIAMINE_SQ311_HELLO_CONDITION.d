func int DIA_BAU_MILITIAMINE_SQ311_HELLO_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 61599)) && ((LOG_GETSTATUS(MIS_SQ311)) != (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BAU_MILITIAMINE_SQ311_HELLO_INFO() {
    var int RANDOM;
    if ((SQ311_FIGHTWITHLEWKO) == (0)) {
        RANDOM = HLP_RANDOM(2);
        if (NPC_WASINSTATE(SELF, 46214)) {
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

func void B_ASSIGNAMBIENTINFOS_BAU_MILITIAMINE(var C_NPC SLF) {
    DIA_BAU_MILITIAMINE_SQ311_HELLO.NPC = HLP_GETINSTANCEID(SLF);
}

