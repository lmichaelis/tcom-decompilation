instance DIA_WOLFSONS_EXIT(C_INFO) {
    NPC = 58382;
    NR = 999;
    CONDITION = DIA_WOLFSONS_EXIT_CONDITION;
    INFORMATION = DIA_WOLFSONS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_WOLFSONS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_WOLFSONS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_WOLFSONS_HOOLIGANS(C_INFO) {
    NPC = 58382;
    NR = 1;
    CONDITION = DIA_WOLFSONS_HOOLIGANS_CONDITION;
    INFORMATION = DIA_WOLFSONS_HOOLIGANS_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_WOLFSONS_HOOLIGANS_CONDITION() {
    if (((NPC_GETDISTTOWP(DJG_13620_WOLFSON, RNG_TRAP45_WAYPOINT)) <= (500)) && ((NPC_GETDISTTOWP(DJG_13621_WOLFSON, "WOLFSDEN_PATH_08B")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WOLFSONS_HOOLIGANS_INFO() {
    TRIA_INVITE(DJG_13621_WOLFSON);
    TRIA_START();
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSons_Hooligans_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_WolfSons_Hooligans_15_02");
    TRIA_WAIT();
    TRIA_NEXT(DJG_13621_WOLFSON);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSons_Hooligans_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSons_Hooligans_03_04");
    TRIA_WAIT();
    TRIA_NEXT(DJG_13620_WOLFSON);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSons_Hooligans_03_05");
    TRIA_WAIT();
    TRIA_NEXT(DJG_13621_WOLFSON);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSons_Hooligans_03_06");
    TRIA_FINISH();
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
    INFO_CLEARCHOICES(82418);
    INFO_ADDCHOICE(82418, "General Lee.", 82421);
    INFO_ADDCHOICE(82418, "Lord Dominique.", 82422);
}

func void DIA_WOLFSONS_HOOLIGANS_LEE() {
    DJG_13621_WOLFSON.FLAGS = 0;
    TRIA_INVITE(DJG_13621_WOLFSON);
    TRIA_START();
    AI_OUTPUT(OTHER, SELF, "DIA_WolfSons_Hooligans_Lee_15_01");
    WOLFSONS_HOOLIGANS = 2;
    TRIA_WAIT();
    TRIA_NEXT(DJG_13621_WOLFSON);
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSons_Hooligans_Lee_03_02");
    TRIA_FINISH();
    AI_STOPPROCESSINFOS(SELF);
    B_IMMEDIATEATTACKPLAYER(DJG_13621_WOLFSON, AR_NONE);
}

func void DIA_WOLFSONS_HOOLIGANS_DOMINIQUE() {
    DJG_13620_WOLFSON.FLAGS = 0;
    AI_OUTPUT(OTHER, SELF, "DIA_Hooligans_Dominique_15_01");
    WOLFSONS_HOOLIGANS = 1;
    AI_OUTPUT(SELF, OTHER, "DIA_Hooligans_Dominique_03_02");
    AI_STOPPROCESSINFOS(SELF);
    B_IMMEDIATEATTACKPLAYER(DJG_13620_WOLFSON, AR_NONE);
}

instance DIA_WOLFSONS_AFTERFIGHT(C_INFO) {
    NPC = 58382;
    NR = 4;
    CONDITION = DIA_WOLFSONS_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_WOLFSONS_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_WOLFSONS_AFTERFIGHT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 82418)) {
        if ((WOLFSONS_HOOLIGANS) == (2)) {
            if ((WOLFSONS_RESULT) != (0)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_WOLFSONS_AFTERFIGHT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSons_AfterFight_03_01");
    if ((WOLFSONS_RESULT) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_WolfSons_AfterFight_03_02");
        B_GIVEPLAYERXP(XP_WOLFSONHOOLIGANS_FAIL);
    };
    if ((WOLFSONS_RESULT) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_WolfSons_AfterFight_03_03");
        B_GIVEPLAYERXP(XP_WOLFSONHOOLIGANS_SUCCESS);
    };
    WOLFSONS_RESULT = 3;
    CREATEINVITEMS(SELF, 36363, 2);
    B_GIVEINVITEMS(SELF, OTHER, 36363, 2);
    NPC_EXCHANGEROUTINE(DJG_13621_WOLFSON, TOT);
    NPC_EXCHANGEROUTINE(SELF, TOT);
    AI_STOPPROCESSINFOS(SELF);
}

