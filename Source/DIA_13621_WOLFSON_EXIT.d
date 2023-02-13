instance DIA_13621_WOLFSON_EXIT(C_INFO) {
    NPC = 58385;
    NR = 999;
    CONDITION = DIA_13621_WOLFSON_EXIT_CONDITION;
    INFORMATION = DIA_13621_WOLFSON_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13621_WOLFSON_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13621_WOLFSON_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13621_WOLFSON_AFTERFIGHT(C_INFO) {
    NPC = 58385;
    NR = 4;
    CONDITION = DIA_13621_WOLFSON_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_13621_WOLFSON_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_13621_WOLFSON_AFTERFIGHT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 82418)) {
        if ((WOLFSONS_HOOLIGANS) == (1)) {
            if ((WOLFSONS_RESULT) != (0)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_13621_WOLFSON_AFTERFIGHT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_13621_WolfSon_AfterFight_03_01");
    if ((WOLFSONS_RESULT) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_13621_WolfSon_AfterFight_03_02");
        B_GIVEPLAYERXP(XP_WOLFSONHOOLIGANS_FAIL);
    };
    if ((WOLFSONS_RESULT) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_13621_WolfSon_AfterFight_03_03");
        B_GIVEPLAYERXP(XP_WOLFSONHOOLIGANS_SUCCESS);
    };
    WOLFSONS_RESULT = 3;
    CREATEINVITEMS(SELF, 36363, 2);
    B_GIVEINVITEMS(SELF, OTHER, 36363, 2);
    NPC_EXCHANGEROUTINE(DJG_13620_WOLFSON, TOT);
    NPC_EXCHANGEROUTINE(SELF, TOT);
    AI_STOPPROCESSINFOS(SELF);
}
