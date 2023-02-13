instance DIA_SACHS_EXIT(C_INFO) {
    NPC = 53373;
    NR = 999;
    CONDITION = DIA_SACHS_EXIT_CONDITION;
    INFORMATION = DIA_SACHS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_SACHS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_SACHS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SACHS_NORMAN(C_INFO) {
    NPC = 53373;
    NR = 1;
    CONDITION = DIA_SACHS_NORMAN_CONDITION;
    INFORMATION = DIA_SACHS_NORMAN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I heard you were handling Norman's body.";
}

func int DIA_SACHS_NORMAN_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q309)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 65347))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SACHS_NORMAN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sachs_Norman_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sachs_Norman_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sachs_Norman_03_03");
    INFO_CLEARCHOICES(69121);
    INFO_ADDCHOICE(69121, "I'm investigating the attempt on Volker.", 69127);
    INFO_ADDCHOICE(69121, "Who do I remind you of?", 69128);
}

var int SACHS_NORMAN_WHAT;
var int SACHS_NORMAN_BOLT;
func void DIA_SACHES_NORMAN_CHOICES() {
    INFO_CLEARCHOICES(69121);
    if ((SACHS_NORMAN_WHAT) == (FALSE)) {
        INFO_ADDCHOICE(69121, "What was your relationship with Norman?", 69132);
    };
    if ((SACHS_NORMAN_BOLT) == (FALSE)) {
        INFO_ADDCHOICE(69121, "What happened to the bolthead that killed Norman?", 69133);
    };
}

func void DIA_SACHS_NORMAN_INVESTIGATION() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sachs_Norman_Investigation_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sachs_Norman_Investigation_03_02");
    DIA_SACHES_NORMAN_CHOICES();
}

func void DIA_SACHS_NORMAN_WHO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sachs_Norman_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sachs_Norman_Who_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sachs_Norman_Who_03_03");
    DIA_SACHES_NORMAN_CHOICES();
}

func void DIA_SACHS_NORMAN_WHO_NEXT() {
    MOB_CHANGEFOCUSNAME("KM_NORMAN_GRAVE_DIRT", "MOBNAME_DIG_OUT");
    AI_OUTPUT(SELF, OTHER, "DIA_Sachs_Norman_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sachs_Norman_Next_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Sachs_Norman_Next_15_03");
    if ((NPC_HASITEMS(OTHER, 36952)) >= (1)) {
        AI_LOGENTRY(TOPIC_Q309, LOG_Q309_SACHS_INFORMATIONS_V3);
    };
    AI_LOGENTRY(TOPIC_Q309, LOG_Q309_SACHS_INFORMATIONS_V4);
    INFO_CLEARCHOICES(69121);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "TAVERN");
}

var int SACHS_NORMAN_COUNT;
func void DIA_SACHS_NORMAN_COUNT() {
    SACHS_NORMAN_COUNT = (SACHS_NORMAN_COUNT) + (1);
    if ((SACHS_NORMAN_COUNT) == (2)) {
        DIA_SACHS_NORMAN_WHO_NEXT();
    };
    DIA_SACHES_NORMAN_CHOICES();
}

func void DIA_SACHS_NORMAN_WHO_WHAT() {
    SACHS_NORMAN_WHAT = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Sachs_Norman_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sachs_Norman_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sachs_Norman_What_03_03");
    DIA_SACHS_NORMAN_COUNT();
}

func void DIA_SACHS_NORMAN_WHO_BOLT() {
    SACHS_NORMAN_BOLT = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Sachs_Norman_Bolt_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Sachs_Norman_Bolt_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sachs_Norman_Bolt_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Sachs_Norman_Bolt_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Sachs_Norman_Bolt_03_05");
    DIA_SACHS_NORMAN_COUNT();
}

instance DIA_SACHS_VOLKER(C_INFO) {
    NPC = 53373;
    NR = 997;
    CONDITION = DIA_SACHS_VOLKER_CONDITION;
    INFORMATION = DIA_SACHS_VOLKER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What do you think of Volker?";
}

func int DIA_SACHS_VOLKER_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 69121)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SACHS_VOLKER_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_OpinionAboutVolker");
    AI_OUTPUT(SELF, OTHER, "DIA_Sachs_Volker_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sachs_Volker_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sachs_Volker_03_03");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SACHS_NOTNOW(C_INFO) {
    NPC = 53373;
    NR = 700;
    CONDITION = DIA_SACHS_NOTNOW_CONDITION;
    INFORMATION = DIA_SACHS_NOTNOW_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's life?";
}

func int DIA_SACHS_NOTNOW_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 69134)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SACHS_NOTNOW_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew5");
    AI_OUTPUT(SELF, OTHER, "DIA_Sachs_NotNow_03_00");
}

instance DIA_SACHS_PICKPOCKET(C_INFO) {
    NPC = 53373;
    NR = 900;
    CONDITION = DIA_SACHS_PICKPOCKET_CONDITION;
    INFORMATION = DIA_SACHS_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_SACHS_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SACHS_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(69140);
    INFO_ADDCHOICE(69140, DIALOG_BACK, 69144);
    INFO_ADDCHOICE(69140, DIALOG_PICKPOCKET, 69143);
}

func void DIA_SACHS_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 34194, 1);
        B_GIVEINVITEMS(SELF, OTHER, 34194, 1);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(69140);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(69140);
}

func void DIA_SACHS_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(69140);
}

