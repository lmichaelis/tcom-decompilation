instance DIA_VIRAN_EXIT(C_INFO) {
    NPC = 54495;
    NR = 999;
    CONDITION = DIA_VIRAN_EXIT_CONDITION;
    INFORMATION = DIA_VIRAN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_VIRAN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_VIRAN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VIRAN_OBSERVE(C_INFO) {
    NPC = 54495;
    NR = 1;
    CONDITION = DIA_VIRAN_OBSERVE_CONDITION;
    INFORMATION = DIA_VIRAN_OBSERVE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you watching?";
}

func int DIA_VIRAN_OBSERVE_CONDITION() {
    return TRUE;
}

func void DIA_VIRAN_OBSERVE_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Viran_Observe_15_01");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Viran_Observe_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Viran_Observe_03_03");
    INFO_CLEARCHOICES(70887);
    INFO_ADDCHOICE(70887, "Why do you say that?", 70890);
}

func void DIA_VIRAN_OBSERVE_WHY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Viran_Observe_Why_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Viran_Observe_Why_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Viran_Observe_Why_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Viran_Observe_Why_03_04");
    INFO_CLEARCHOICES(70887);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_VIRAN_Q506_HARBOUR(C_INFO) {
    NPC = 54495;
    NR = 1;
    CONDITION = DIA_VIRAN_Q506_HARBOUR_CONDITION;
    INFORMATION = DIA_VIRAN_Q506_HARBOUR_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Are you going to be stuck in this port for long?";
}

func int DIA_VIRAN_Q506_HARBOUR_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 70887)) && ((LOG_GETSTATUS(MIS_Q505)) == (LOG_RUNNING))) && (NPC_KNOWSINFO(OTHER, 80244))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VIRAN_Q506_HARBOUR_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Viran_Q506_Harbour_15_01");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Viran_Q506_Harbour_03_02");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Viran_Q506_Harbour_15_03");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Viran_Q506_Harbour_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Viran_Q506_Harbour_15_05");
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Viran_Q506_Harbour_15_06");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Viran_Q506_Harbour_03_07");
    INFO_CLEARCHOICES(70891);
    INFO_ADDCHOICE(70891, "As fast as you can, the ruins of Vardhal.", 70894);
}

func void DIA_VIRAN_Q506_HARBOUR_VARDHAL() {
    Q506_VIRANVOLFZACKE = TRUE;
    SLD_13784_VARIN.AIVAR[15] = TRUE;
    B_GIVEPLAYERXP(XP_VARHDAL_RECRUIT);
    AI_OUTPUT(OTHER, SELF, "DIA_Viran_Q506_Harbour_Vardhal_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Viran_Q506_Harbour_Vardhal_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Viran_Q506_Harbour_Vardhal_03_03");
    INFO_CLEARCHOICES(70891);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "Q506_CAMP");
    if ((Q506_DUSTERVOLFZACKE) == (TRUE)) {
        AI_LOGENTRY(TOPIC_Q506, LOG_Q506_VIRAN_TOVARHDAL);
    };
    AI_LOGENTRY(TOPIC_Q506, NAME_SPL_PLAGUE);
}

instance DIA_VARIN_Q506_FEEL(C_INFO) {
    NPC = 54495;
    NR = 90;
    CONDITION = DIA_VARIN_Q506_FEEL_CONDITION;
    INFORMATION = DIA_VARIN_Q506_FEEL_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the morale?";
}

func int DIA_VARIN_Q506_FEEL_CONDITION() {
    if (((NPC_GETDISTTOWP(SELF, "PART5_WORKERSCAMP_VIRAN")) <= (2000)) && ((Q506_VIRANVOLFZACKE) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VARIN_Q506_FEEL_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackMorale3");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Varin_Q506_Feel_03_01");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_VARIN_Q506_NOTNOW(C_INFO) {
    NPC = 54495;
    NR = 90;
    CONDITION = DIA_VARIN_Q506_NOTNOW_CONDITION;
    INFORMATION = DIA_VARIN_Q506_NOTNOW_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_VARIN_Q506_NOTNOW_CONDITION() {
    if ((((NPC_GETDISTTOWP(SELF, "PART5_WORKERSCAMP_VIRAN")) >= (4000)) && (NPC_ISINSTATE(SELF, 61599))) && ((Q506_VIRANVOLFZACKE) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VARIN_Q506_NOTNOW_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Varin_Q506_NotNow_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VARIN_HELLO(C_INFO) {
    NPC = 54495;
    NR = 1;
    CONDITION = DIA_VARIN_HELLO_CONDITION;
    INFORMATION = DIA_VARIN_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_VARIN_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_VARIN_HELLO_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhoAreYou");
    AI_OUTPUT(SELF, OTHER, "DIA_Varin_Hello_03_02");
}

instance DIA_VARIN_AMBIENT(C_INFO) {
    NPC = 54495;
    NR = 998;
    CONDITION = DIA_VARIN_AMBIENT_CONDITION;
    INFORMATION = DIA_VARIN_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "What's up?";
}

func int DIA_VARIN_AMBIENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 70901)) && ((Q506_VIRANVOLFZACKE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VARIN_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_HowAreYou2");
    if ((HERO.GUILD) != (GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Varin_Ambient_03_01");
    };
    if ((HERO.GUILD) == (GIL_SLD)) {
        if (!(NPC_KNOWSINFO(OTHER, 70887))) {
            AI_OUTPUT(SELF, OTHER, "DIA_Varin_Ambient_03_02");
        } else if (NPC_KNOWSINFO(OTHER, 70887)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Varin_Ambient_03_03");
        };
    };
}

instance DIA_VARIN_PICKPOCKET(C_INFO) {
    NPC = 54495;
    NR = 900;
    CONDITION = DIA_VARIN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_VARIN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_VARIN_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VARIN_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(70907);
    INFO_ADDCHOICE(70907, DIALOG_BACK, 70911);
    INFO_ADDCHOICE(70907, DIALOG_PICKPOCKET, 70910);
}

func void DIA_VARIN_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(70907);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(70907);
}

func void DIA_VARIN_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(70907);
}
