instance DIA_KLAUS_EXIT(C_INFO) {
    NPC = 58045;
    NR = 999;
    CONDITION = DIA_KLAUS_EXIT_CONDITION;
    INFORMATION = DIA_KLAUS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_KLAUS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_KLAUS_EXIT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Klaus_EXIT_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Klaus_EXIT_03_02");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_KLAUS_HELLO(C_INFO) {
    NPC = 58045;
    NR = 1;
    CONDITION = DIA_KLAUS_HELLO_CONDITION;
    INFORMATION = DIA_KLAUS_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_KLAUS_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_KLAUS_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Klaus_Hello_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Klaus_Hello_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Klaus_Hello_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Klaus_Hello_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Klaus_Hello_03_05");
}

instance DIA_KLAUS_ABOUTTHATTOWER(C_INFO) {
    NPC = 58045;
    NR = 2;
    CONDITION = DIA_KLAUS_ABOUTTHATTOWER_CONDITION;
    INFORMATION = DIA_KLAUS_ABOUTTHATTOWER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Tell me about this signal tower.";
}

func int DIA_KLAUS_ABOUTTHATTOWER_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 86269)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KLAUS_ABOUTTHATTOWER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Klaus_AboutThatTower_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Klaus_AboutThatTower_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Klaus_AboutThatTower_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Klaus_AboutThatTower_03_04");
}

instance DIA_KLAUS_GETTINGBORING(C_INFO) {
    NPC = 58045;
    NR = 3;
    CONDITION = DIA_KLAUS_GETTINGBORING_CONDITION;
    INFORMATION = DIA_KLAUS_GETTINGBORING_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Aren't you bored here?";
}

func int DIA_KLAUS_GETTINGBORING_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 86269)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KLAUS_GETTINGBORING_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Klaus_GettingBoring_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Klaus_GettingBoring_03_02");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Klaus_GettingBoring_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Klaus_GettingBoring_03_04");
}

instance DIA_KLAUS_SQ101_BASTIAN(C_INFO) {
    NPC = 58045;
    NR = 6;
    CONDITION = DIA_KLAUS_SQ101_BASTIAN_CONDITION;
    INFORMATION = DIA_KLAUS_SQ101_BASTIAN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Bastian sent me.";
}

func int DIA_KLAUS_SQ101_BASTIAN_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ101)) == (LOG_RUNNING)) && ((SQ101_MARVINCANTAKEWOOD) == (FALSE))) && (NPC_KNOWSINFO(OTHER, 86269))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KLAUS_SQ101_BASTIAN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Klaus_SQ101_NeedWoodForQuest_BastianSendMe_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Klaus_SQ101_NeedWoodForQuest_BastianSendMe_15_02");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Klaus_SQ101_NeedWoodForQuest_BastianSendMe_03_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Klaus_SQ101_NeedWoodForQuest_BastianSendMe_03_04");
}

instance DIA_KLAUS_THIEF(C_INFO) {
    NPC = 58045;
    NR = 6;
    CONDITION = DIA_KLAUS_THIEF_CONDITION;
    INFORMATION = DIA_KLAUS_THIEF_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KLAUS_THIEF_CONDITION() {
    if (((NPC_HASITEMS(OTHER, 37059)) >= (1)) && ((SQ101_MARVINCANTAKEWOOD) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KLAUS_THIEF_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Klaus_Thief_03_01");
    AI_DRAWWEAPON(SELF);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 62332);
}

instance DIA_KLAUS_AMBIENTMILITIA(C_INFO) {
    NPC = 58045;
    NR = 1;
    CONDITION = DIA_KLAUS_AMBIENTMILITIA_CONDITION;
    INFORMATION = DIA_KLAUS_AMBIENTMILITIA_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KLAUS_AMBIENTMILITIA_CONDITION() {
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KLAUS_AMBIENTMILITIA_INFO() {
    B_GIVEPLAYERXP(XP_EVENT_KLAUSSECONDMEETING);
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Klaus_AmbientMilitia_03_01");
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Klaus_AmbientMilitia_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Klaus_AmbientMilitia_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Klaus_AmbientMilitia_15_04");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Klaus_AmbientMilitia_03_05");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_KLAUS_PICKPOCKET(C_INFO) {
    NPC = 58045;
    NR = 900;
    CONDITION = DIA_KLAUS_PICKPOCKET_CONDITION;
    INFORMATION = DIA_KLAUS_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_KLAUS_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KLAUS_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(86287);
    INFO_ADDCHOICE(86287, DIALOG_BACK, 86291);
    INFO_ADDCHOICE(86287, DIALOG_PICKPOCKET, 86290);
}

func void DIA_KLAUS_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 33984, 1);
        B_GIVEINVITEMS(SELF, OTHER, 33984, 1);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(86287);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(86287);
}

func void DIA_KLAUS_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(86287);
}

