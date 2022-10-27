instance DIA_GREGOR_EXIT(C_INFO) {
    NPC = 0xe509;
    NR = 999;
    CONDITION = DIA_GREGOR_EXIT_CONDITION;
    INFORMATION = DIA_GREGOR_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_GREGOR_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_GREGOR_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_GREGOR_GETOUT(C_INFO) {
    NPC = 0xe509;
    NR = 1;
    CONDITION = DIA_GREGOR_GETOUT_CONDITION;
    INFORMATION = DIA_GREGOR_GETOUT_INFO;
    IMPORTANT = TRUE;
}

func int DIA_GREGOR_GETOUT_CONDITION() {
    return TRUE;
}

func void DIA_GREGOR_GETOUT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Gregor_Getout_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gregor_Getout_13_02");
}

instance DIA_GREGOR_CAGE(C_INFO) {
    NPC = 0xe509;
    NR = 1;
    CONDITION = DIA_GREGOR_CAGE_CONDITION;
    INFORMATION = DIA_GREGOR_CAGE_INFO;
    DESCRIPTION = "Who's in your cage?";
}

func int DIA_GREGOR_CAGE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x146a5)) {
        if ((SQ507_STARTINGPOINT) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GREGOR_CAGE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gregor_Getout_cage_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Gregor_Getout_cage_13_07");
    if ((LOG_GETSTATUS(MIS_SQ316)) == (LOG_RUNNING)) {
        AI_LOGENTRY(TOPIC_SQ316, LOG_SQ316_CAGEDGIRL);
    };
    SQ316_KNOWGREGOR = TRUE;
}

instance DIA_GREGOR_SQ316_ITISLENA(C_INFO) {
    NPC = 0xe509;
    NR = 1;
    CONDITION = DIA_GREGOR_SQ316_ITISLENA_CONDITION;
    INFORMATION = DIA_GREGOR_SQ316_ITISLENA_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "That girl you're holding is Lena, right?";
}

func int DIA_GREGOR_SQ316_ITISLENA_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x147c7)) && ((LOG_GETSTATUS(MIS_SQ316)) == (LOG_RUNNING))) {
        if ((SQ507_STARTINGPOINT) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GREGOR_SQ316_ITISLENA_INFO() {
    VLK_6126_LENA.NAME[0] = NPCNAME_LENA;
    VLK_6126_LENA.AIVAR[79] = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Gregor_SQ316_ItIsLena_15_01");
    MDL_STARTFACEANI(SELF, S_ANGRY, 0x3f800000, -1082130432);
    AI_OUTPUT(SELF, OTHER, "DIA_Gregor_SQ316_ItIsLena_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Gregor_SQ316_ItIsLena_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Gregor_SQ316_ItIsLena_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Gregor_SQ316_ItIsLena_03_05");
}

instance DIA_GREGOR_SQ316_RANSOM(C_INFO) {
    NPC = 0xe509;
    NR = 2;
    CONDITION = DIA_GREGOR_SQ316_RANSOM_CONDITION;
    INFORMATION = DIA_GREGOR_SQ316_RANSOM_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You kidnapped her for ransom, didn't you?";
}

func int DIA_GREGOR_SQ316_RANSOM_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x146ab)) && ((LOG_GETSTATUS(MIS_SQ316)) == (LOG_RUNNING))) {
        if ((SQ507_STARTINGPOINT) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GREGOR_SQ316_RANSOM_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gregor_SQ316_Ransom_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gregor_SQ316_Ransom_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Gregor_SQ316_Ransom_15_03");
    MDL_STARTFACEANI(SELF, S_NEUTRAL, 0x3f800000, -1082130432);
    AI_OUTPUT(SELF, OTHER, "DIA_Gregor_SQ316_Ransom_03_04");
}

instance DIA_GREGOR_SQ316_FREEDOMPRICE(C_INFO) {
    NPC = 0xe509;
    NR = 3;
    CONDITION = DIA_GREGOR_SQ316_FREEDOMPRICE_CONDITION;
    INFORMATION = DIA_GREGOR_SQ316_FREEDOMPRICE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How much will her freedom cost?";
}

func int DIA_GREGOR_SQ316_FREEDOMPRICE_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x146ae)) && ((LOG_GETSTATUS(MIS_SQ316)) == (LOG_RUNNING))) {
        if ((SQ507_STARTINGPOINT) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GREGOR_SQ316_FREEDOMPRICE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gregor_SQ316_FreedomPrice_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gregor_SQ316_FreedomPrice_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gregor_SQ316_FreedomPrice_03_03");
    AI_LOGENTRY(TOPIC_SQ316, LOG_SQ316_RANSOM);
}

instance DIA_GREGOR_SQ316_RANSOMPAID(C_INFO) {
    NPC = 0xe509;
    NR = 1;
    CONDITION = DIA_GREGOR_SQ316_RANSOMPAID_CONDITION;
    INFORMATION = DIA_GREGOR_SQ316_RANSOMPAID_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I have everything you requested.";
}

func int DIA_GREGOR_SQ316_RANSOMPAID_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x146b1)) && ((LOG_GETSTATUS(MIS_SQ316)) == (LOG_RUNNING))) && ((SQ316_GIVEGREGORALLSTUFF) == (0))) {
        if ((SQ507_STARTINGPOINT) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GREGOR_SQ316_RANSOMPAID_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gregor_SQ316_RansomPaid_15_01");
    SQ316_CHECKMARVINBEER();
}

instance DIA_GREGOR_SQ316_TAKEHER(C_INFO) {
    NPC = 0xe509;
    NR = 1;
    CONDITION = DIA_GREGOR_SQ316_TAKEHER_CONDITION;
    INFORMATION = DIA_GREGOR_SQ316_TAKEHER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You got your gold. Now it's time for the girl.";
}

func int DIA_GREGOR_SQ316_TAKEHER_CONDITION() {
    if (((SQ316_GIVEGREGORALLSTUFF) == (TRUE)) && ((LOG_GETSTATUS(MIS_SQ316)) == (LOG_RUNNING))) {
        if ((SQ507_STARTINGPOINT) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GREGOR_SQ316_TAKEHER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gregor_SQ316_TakeHer_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gregor_SQ316_TakeHer_03_02");
    AI_LOGENTRY(TOPIC_SQ316, LOG_SQ316_TAKEHER);
    B_GIVEPLAYERXP(XP_SQ316_RAMSON);
    SQ316_CANUSELEVER = TRUE;
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xf3f6);
}

instance DIA_GREGOR_SQ316_FUCKTHIS(C_INFO) {
    NPC = 0xe509;
    NR = 2;
    CONDITION = DIA_GREGOR_SQ316_FUCKTHIS_CONDITION;
    INFORMATION = DIA_GREGOR_SQ316_FUCKTHIS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I changed my mind. You'll give it to me for free.";
}

func int DIA_GREGOR_SQ316_FUCKTHIS_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x146b1)) && ((LOG_GETSTATUS(MIS_SQ316)) == (LOG_RUNNING))) && ((SQ316_GIVEGREGORALLSTUFF) == (0))) {
        if ((SQ507_STARTINGPOINT) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GREGOR_SQ316_FUCKTHIS_INFO() {
    AI_STARTFACEANI(SELF, "S_HOSTILE", 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gregor_SQ316_FuckThis_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gregor_SQ316_FuckThis_03_02");
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ316, LOG_SQ316_NORANSON);
    AI_FUNCTION(HERO, 0xf3f0);
}

instance DIA_GREGOR_AMBIENT(C_INFO) {
    NPC = 0xe509;
    NR = 997;
    CONDITION = DIA_GREGOR_AMBIENT_CONDITION;
    INFORMATION = DIA_GREGOR_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_GREGOR_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x146a8)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GREGOR_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gregor_Ambient_15_00");
    if (!(NPC_KNOWSINFO(OTHER, 0x146b7))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Gregor_Ambient_13_01");
    };
    if ((NPC_KNOWSINFO(OTHER, 0x146b7)) && (!(NPC_KNOWSINFO(OTHER, 0x146ba)))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Gregor_Ambient_13_02");
    };
    if (NPC_KNOWSINFO(OTHER, 0x146ba)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Gregor_Ambient_13_03");
        AI_STOPPROCESSINFOS(SELF);
    };
}

instance DIA_GREGOR_PICKPOCKET(C_INFO) {
    NPC = 0xe509;
    NR = 900;
    CONDITION = DIA_GREGOR_PICKPOCKET_CONDITION;
    INFORMATION = DIA_GREGOR_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_GREGOR_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GREGOR_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x146c0);
    INFO_ADDCHOICE(0x146c0, DIALOG_BACK, 0x146c4);
    INFO_ADDCHOICE(0x146c0, DIALOG_PICKPOCKET, 0x146c3);
}

func void DIA_GREGOR_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x146c0);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x146c0);
}

func void DIA_GREGOR_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x146c0);
}

