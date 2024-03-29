instance DIA_KOBUS_EXIT(C_INFO) {
    NPC = 54412;
    NR = 999;
    CONDITION = DIA_KOBUS_EXIT_CONDITION;
    INFORMATION = DIA_KOBUS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_KOBUS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_KOBUS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_KOBUS_HELLO(C_INFO) {
    NPC = 54412;
    NR = 1;
    CONDITION = DIA_KOBUS_HELLO_CONDITION;
    INFORMATION = DIA_KOBUS_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KOBUS_HELLO_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 61599)) && ((KAPITEL) <= (5))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KOBUS_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_HELLO_15_01");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_03_03");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_HELLO_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_HELLO_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_03_10");
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_HELLO_15_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_03_12");
    INFO_CLEARCHOICES(65494);
    INFO_ADDCHOICE(65494, "Your threats don't impress me.", 65499);
    INFO_ADDCHOICE(65494, "I guess I have no choice.", 65498);
}

func void DIA_KOBUS_HELLO_NEXT() {
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_Next_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_HELLO_Next_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_Next_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_HELLO_Next_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_Next_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_HELLO_Next_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_Next_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_Next_03_09");
    INFO_CLEARCHOICES(65494);
    INFO_ADDCHOICE(65494, "I don't think that's possible.", 65500);
}

func void DIA_KOBUS_HELLO_NOCHOICE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_HELLO_NoChoice_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_NoChoice_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_HELLO_NoChoice_15_03");
    DIA_KOBUS_HELLO_NEXT();
}

func void DIA_KOBUS_HELLO_SCARED() {
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_HELLO_Scared_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_Scared_03_02");
    CREATEINVITEMS(SELF, 34610, 1);
    B_READYSPELL(SELF, SPL_ICECUBE, SPL_COST_ICECUBE);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_HELLO_Scared_15_03");
    AI_UNREADYSPELL(SELF);
    DIA_KOBUS_HELLO_NEXT();
}

func void DIA_KOBUS_HELLO_SCARED_NEXT_IMPOSSIBLE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_HELLO_Impossible_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_Impossible_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_HELLO_Impossible_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_Impossible_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_Impossible_03_05");
    INFO_CLEARCHOICES(65494);
    INFO_ADDCHOICE(65494, "Why pearls?", 65502);
}

var int KOBUS_NEEDPEARLS;
func void DIA_KOBUS_HELLO_SCARED_NEXT_IMPOSSIBLE_PEARLS() {
    KOBUS_NEEDPEARLS = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_HELLO_Pearls_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_Pearls_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_HELLO_Pearls_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_Pearls_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_HELLO_Pearls_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_HELLO_Pearls_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_HELLO_Pearls_15_07");
    INFO_CLEARCHOICES(65494);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ217_WAIT");
    LOG_CREATETOPIC(TOPIC_SQ217, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ217), TOPIC_SQ217, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ217, LOG_SQ217_START);
}

instance DIA_KOBUS_PEARLS(C_INFO) {
    NPC = 54412;
    NR = 1;
    CONDITION = DIA_KOBUS_PEARLS_CONDITION;
    INFORMATION = DIA_KOBUS_PEARLS_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Back to your problem...";
}

func int DIA_KOBUS_PEARLS_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ217)) == (LOG_RUNNING)) && ((KAPITEL) <= (5))) && ((KOBUS_NEEDPEARLS) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KOBUS_PEARLS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_Pearls_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_Pearls_03_02");
    if ((NPC_HASITEMS(OTHER, 33661)) >= (8)) {
        MOB_CHANGEFOCUSNAME("SQ217_PEARLS_WATERCONTAINER", "MOBNAME_SQ217_PEARLS");
        KOBUS_NEEDPEARLS = FALSE;
        SQ217_PEARLS = 1;
        B_GIVEINVITEMS(OTHER, SELF, 33661, 8);
        CREATEINVITEMS(SELF, 37078, 1);
        B_GIVEINVITEMS(SELF, OTHER, 37078, 1);
        AI_OUTPUT(OTHER, SELF, "DIA_Kobus_Pearls_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Kobus_Pearls_03_04");
        AI_OUTPUT(OTHER, SELF, "DIA_Kobus_Pearls_15_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Kobus_Pearls_03_06");
        AI_OUTPUT(OTHER, SELF, "DIA_Kobus_Pearls_15_07");
        AI_OUTPUT(SELF, OTHER, "DIA_Kobus_Pearls_03_08");
        AI_LOGENTRY(TOPIC_SQ217, LOG_SQ217_GOTPEARLS);
        NPC_EXCHANGEROUTINE(SELF, "SQ217_BEFOREMAGIC");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_Pearls_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_Pearls_03_10");
    AI_OUTPUT(OTHER, SELF, "DIA_Kobus_Pearls_15_11");
}

instance DIA_KOBUS_AFTERPEARLS(C_INFO) {
    NPC = 54412;
    NR = 1;
    CONDITION = DIA_KOBUS_AFTERPEARLS_CONDITION;
    INFORMATION = DIA_KOBUS_AFTERPEARLS_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_KOBUS_AFTERPEARLS_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ217)) == (LOG_RUNNING)) && ((KAPITEL) <= (5))) && ((SQ217_PEARLS) >= (2))) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KOBUS_AFTERPEARLS_INFO() {
    if ((SQ217_PEARLS) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Kobus_AfterPearls_03_01");
        AI_OUTPUT(OTHER, SELF, "DIA_Kobus_AfterPearls_15_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Kobus_AfterPearls_03_03");
        AI_OUTPUT(OTHER, SELF, "DIA_Kobus_AfterPearls_15_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Kobus_AfterPearls_03_05");
        AI_OUTPUT(OTHER, SELF, "DIA_Kobus_AfterPearls_15_06");
        AI_OUTPUT(SELF, OTHER, "DIA_Kobus_AfterPearls_03_07");
        AI_OUTPUT(OTHER, SELF, "DIA_Kobus_AfterPearls_15_08");
        AI_OUTPUT(SELF, OTHER, "DIA_Kobus_AfterPearls_03_09");
        AI_OUTPUT(OTHER, SELF, "DIA_Kobus_AfterPearls_15_10");
        AI_OUTPUT(SELF, OTHER, "DIA_Kobus_AfterPearls_03_11");
        AI_OUTPUT(SELF, OTHER, "DIA_Kobus_AfterPearls_03_12");
        AI_OUTPUT(SELF, OTHER, "DIA_Kobus_AfterPearls_03_13");
        AI_OUTPUT(SELF, OTHER, "DIA_Kobus_AfterPearls_03_14");
        AI_OUTPUT(OTHER, SELF, "DIA_Kobus_AfterPearls_15_15");
        AI_OUTPUT(SELF, OTHER, "DIA_Kobus_AfterPearls_03_16");
        AI_OUTPUT(SELF, OTHER, "DIA_Kobus_AfterPearls_03_17");
        AI_STOPPROCESSINFOS(SELF);
        NPC_EXCHANGEROUTINE(SELF, "NORMALDAY");
        B_LOGENTRY(TOPIC_SQ217, LOG_SQ217_FINISH);
        LOG_SETSTATUS(_@(MIS_SQ217), TOPIC_SQ217, LOG_SUCCESS);
        B_GIVEPLAYERXP(XP_SQ217_FINISH);
        GAMESERVICES_UNLOCKACHIEVEMENT(ACH_12);
        CREATEINVITEMS(SELF, 36956, 1);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Kobus_AfterPearls_03_18");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_KOBUS_AMBIENT(C_INFO) {
    NPC = 54412;
    NR = 950;
    CONDITION = DIA_KOBUS_AMBIENT_CONDITION;
    INFORMATION = DIA_KOBUS_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's life?";
}

func int DIA_KOBUS_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 65494)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KOBUS_AMBIENT_INFO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew5");
    if ((LOG_GETSTATUS(MIS_SQ217)) != (LOG_SUCCESS)) {
        NPC_INITAMBIENTS(SELF, 2);
    };
    NPC_INITAMBIENTS(SELF, 3);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Kobus_Ambient_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Kobus_Ambient_03_03");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Kobus_Ambient_03_01");
    };
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_KOBUS_PICKPOCKET(C_INFO) {
    NPC = 54412;
    NR = 900;
    CONDITION = DIA_KOBUS_PICKPOCKET_CONDITION;
    INFORMATION = DIA_KOBUS_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_KOBUS_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KOBUS_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(65512);
    INFO_ADDCHOICE(65512, DIALOG_BACK, 65516);
    INFO_ADDCHOICE(65512, DIALOG_PICKPOCKET, 65515);
}

func void DIA_KOBUS_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 38189, 2);
        B_GIVEINVITEMS(SELF, OTHER, 38189, 2);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(65512);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(65512);
}

func void DIA_KOBUS_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(65512);
}

