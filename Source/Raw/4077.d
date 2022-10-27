instance DIA_NOVIZE_SQ508_01_EXIT(C_INFO) {
    NPC = 0xdd19;
    NR = 999;
    CONDITION = DIA_NOVIZE_EXIT_CONDITION;
    INFORMATION = DIA_NOVIZE_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_NOVIZE_SQ508_01_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_NOVIZE_SQ508_01_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_NOVIZE_SQ508_AMBIENT(C_INFO) {
    NPC = 0xdd19;
    NR = 1;
    CONDITION = DIA_NOVIZE_SQ508_AMBIENT_CONDITION;
    INFORMATION = DIA_NOVIZE_SQ508_AMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_NOVIZE_SQ508_AMBIENT_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NOVIZE_SQ508_AMBIENT_INFO() {
    if (NPC_KNOWSINFO(OTHER, 0x13a4d)) {
        if ((LOG_GETSTATUS(MIS_SQ508)) == (LOG_SUCCESS)) {
            if ((CHECKBONUSEXPSQ508) == (FALSE)) {
                CHECKBONUSEXPSQ508 = TRUE;
                B_GIVEPLAYERXP(XP_READBOOKSTAND);
            };
            AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Novize_SQ508_Ambient_03_02");
        } else {
            AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Novize_SQ508_Ambient_03_01");
        } else {
            /* set_instance(0) */;
        };
    };
    B_SAY(SELF, OTHER, "$IMBUSY_CALM");
    AI_STOPPROCESSINFOS(SELF);
}

var int DIA_NOVIZE_SQ508_AMBIENT_INFO.CHECKBONUSEXPSQ508 = 0;
