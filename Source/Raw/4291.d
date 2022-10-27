instance DIA_HOLIDAYCITIZEN_EXIT(C_INFO) {
    NPC = 0xe1a6;
    NR = 999;
    CONDITION = DIA_HOLIDAYCITIZEN_EXIT_CONDITION;
    INFORMATION = DIA_HOLIDAYCITIZEN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_HOLIDAYCITIZEN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_HOLIDAYCITIZEN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HOLIDAYCITIZEN_NS71_START(C_INFO) {
    NPC = 0xe1a6;
    NR = 1;
    CONDITION = DIA_HOLIDAYCITIZEN_NS71_START_CONDITION;
    INFORMATION = DIA_HOLIDAYCITIZEN_NS71_START_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HOLIDAYCITIZEN_NS71_START_CONDITION() {
    if (((NPC_ISDEAD(BAU_13947_HORNPLAYER)) == (FALSE)) && ((NS71_SILENCE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOLIDAYCITIZEN_NS71_START_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_HolidayCitizen_NS71_Start_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_HolidayCitizen_NS71_Start_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_HolidayCitizen_NS71_AfterStart_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HOLIDAYCITIZEN_NS71_AFTERSTART(C_INFO) {
    NPC = 0xe1a6;
    NR = 1;
    CONDITION = DIA_HOLIDAYCITIZEN_NS71_AFTERSTART_CONDITION;
    INFORMATION = DIA_HOLIDAYCITIZEN_NS71_AFTERSTART_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_HOLIDAYCITIZEN_NS71_AFTERSTART_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x1564c)) {
        if (((NPC_ISDEAD(BAU_13947_HORNPLAYER)) == (FALSE)) && ((NS71_SILENCE) == (FALSE))) {
            if (NPC_ISINSTATE(SELF, 0xf09f)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOLIDAYCITIZEN_NS71_AFTERSTART_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_HolidayCitizen_NS71_AfterStart_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HOLIDAYCITIZEN_NS71_END(C_INFO) {
    NPC = 0xe1a6;
    NR = 1;
    CONDITION = DIA_HOLIDAYCITIZEN_NS71_END_CONDITION;
    INFORMATION = DIA_HOLIDAYCITIZEN_NS71_END_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HOLIDAYCITIZEN_NS71_END_CONDITION() {
    if ((NPC_ISDEAD(BAU_13947_HORNPLAYER)) || ((NS71_SILENCE) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOLIDAYCITIZEN_NS71_END_INFO() {
    if (NPC_KNOWSINFO(OTHER, 0x1564c)) {
        AI_OUTPUT(SELF, OTHER, "DIA_HolidayCitizen_NS71_End_03_01");
        AI_OUTPUT(SELF, OTHER, "DIA_HolidayCitizen_NS71_End_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_HolidayCitizen_NS71_End_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_HolidayCitizen_NS71_End_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_HolidayCitizen_NS71_End_03_05");
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, HOLIDAYCITIZEN_GOLD);
    B_GIVEPLAYERXP(XP_EVENT_HOLIDAYCITIZEN);
    NPC_EXCHANGEROUTINE(SELF, TOT);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HOLIDAYCITIZEN_NS71_ENDAMBIENT(C_INFO) {
    NPC = 0xe1a6;
    NR = 1;
    CONDITION = DIA_HOLIDAYCITIZEN_NS71_ENDAMBIENT_CONDITION;
    INFORMATION = DIA_HOLIDAYCITIZEN_NS71_ENDAMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_HOLIDAYCITIZEN_NS71_ENDAMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15652)) {
        if (NPC_ISINSTATE(SELF, 0xf09f)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOLIDAYCITIZEN_NS71_ENDAMBIENT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_HolidayCitizen_NS71_EndAmbient_03_01");
    AI_STOPPROCESSINFOS(SELF);
}
