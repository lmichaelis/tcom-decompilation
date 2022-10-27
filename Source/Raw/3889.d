instance DIA_KATRINA_EXIT(C_INFO) {
    NPC = 0xd136;
    NR = 999;
    CONDITION = DIA_KATRINA_EXIT_CONDITION;
    INFORMATION = DIA_KATRINA_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_KATRINA_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_KATRINA_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
    PLAYERHOUSE_CHCEKBOUGHTITEMS();
}

instance DIA_KATRINA_HELLO(C_INFO) {
    NPC = 0xd136;
    NR = 1;
    CONDITION = DIA_KATRINA_HELLO_CONDITION;
    INFORMATION = DIA_KATRINA_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KATRINA_HELLO_CONDITION() {
    return TRUE;
}

func void KATRINA_WHERETOBUY() {
    if ((SQ411_MARVINGOTKEYS) == (TRUE)) {
        if ((KATRINA_WHERETOBUY_LOGENTRY) == (FALSE)) {
            KATRINA_WHERETOBUY_LOGENTRY = TRUE;
            LOG_CREATETOPIC(TOPIC_OURHOUME, LOG_NOTE);
            AI_LOGENTRY(TOPIC_OURHOUME, LOG_OURHOME_WHERETOBUY);
        };
    };
}

var int KATRINA_WHERETOBUY.KATRINA_WHERETOBUY_LOGENTRY = 0;
func void DIA_KATRINA_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Katrina_HELLO_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Katrina_HELLO_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Katrina_HELLO_03_03");
    KATRINA_WHERETOBUY();
}

instance DIA_KATRINA_NEEDHOME(C_INFO) {
    NPC = 0xd136;
    NR = 1;
    CONDITION = DIA_KATRINA_NEEDHOME_CONDITION;
    INFORMATION = DIA_KATRINA_NEEDHOME_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Have you heard of any homes for sale?";
}

func int DIA_KATRINA_NEEDHOME_CONDITION() {
    if (((SQ411_MARVINGOTKEYS) == (FALSE)) && ((LOG_GETSTATUS(MIS_SQ411)) != (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KATRINA_NEEDHOME_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Katrina_NeedHome_15_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Katrina_NeedHome_03_02");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Katrina_NeedHome_03_03");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Katrina_NeedHome_03_04");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Katrina_NeedHome_03_05");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Katrina_NeedHome_03_06");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_KATRINA_WANTTOBUY(C_INFO) {
    NPC = 0xd136;
    NR = 1;
    CONDITION = DIA_KATRINA_WANTTOBUY_CONDITION;
    INFORMATION = DIA_KATRINA_WANTTOBUY_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "I would like to review your home furnishings.";
}

func int DIA_KATRINA_WANTTOBUY_CONDITION() {
    if ((SQ411_MARVINGOTKEYS) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int KATRINA_WANTTOBUY_FIRSTDIALOGUE = 0;
func void DIA_KATRINA_WANTTOBUY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Katrina_WantToBuy_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    if ((KATRINA_WANTTOBUY_FIRSTDIALOGUE) == (FALSE)) {
        KATRINA_WANTTOBUY_FIRSTDIALOGUE = TRUE;
        AI_OUTPUT(SELF, OTHER, "DIA_Katrina_WantToBuy_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Katrina_WantToBuy_03_03");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Katrina_WantToBuy_03_04");
    B_GIVETRADEINV(SELF);
    KATRINA_WHERETOBUY();
}

instance DIA_KATRINA_CANYOU(C_INFO) {
    NPC = 0xd136;
    NR = 9;
    CONDITION = DIA_KATRINA_CANYOU_CONDITION;
    INFORMATION = DIA_KATRINA_CANYOU_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Guilds allow you to sell equipment with their insignia?";
}

func int DIA_KATRINA_CANYOU_CONDITION() {
    if ((KATRINA_WANTTOBUY_FIRSTDIALOGUE) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KATRINA_CANYOU_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Katrina_CanYou_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Katrina_CanYou_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Katrina_CanYou_03_03");
    AI_RESETFACEANI(OTHER);
}

instance DIA_KATRINA_WHERE(C_INFO) {
    NPC = 0xd136;
    NR = 10;
    CONDITION = DIA_KATRINA_WHERE_CONDITION;
    INFORMATION = DIA_KATRINA_WHERE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Where do you get all that furniture and trophies?";
}

func int DIA_KATRINA_WHERE_CONDITION() {
    if ((KATRINA_WANTTOBUY_FIRSTDIALOGUE) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KATRINA_WHERE_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Katrina_Where_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Katrina_Where_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Katrina_Where_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Katrina_Where_03_04");
}

instance DIA_KATRINA_LEON(C_INFO) {
    NPC = 0xd136;
    NR = 90;
    CONDITION = DIA_KATRINA_LEON_CONDITION;
    INFORMATION = DIA_KATRINA_LEON_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I don't see your husband helping you in the shop.";
}

func int DIA_KATRINA_LEON_CONDITION() {
    return TRUE;
}

func void DIA_KATRINA_LEON_INFO() {
    AI_STARTFACEANI(OTHER, S_DOUBT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Katrina_Leon_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Katrina_Leon_03_02");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Katrina_Leon_03_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_KATRINA_PICKPOCKET(C_INFO) {
    NPC = 0xd136;
    NR = 900;
    CONDITION = DIA_KATRINA_PICKPOCKET_CONDITION;
    INFORMATION = DIA_KATRINA_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120_FEMALE;
}

func int DIA_KATRINA_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KATRINA_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x11f0e);
    INFO_ADDCHOICE(0x11f0e, DIALOG_BACK, 0x11f12);
    INFO_ADDCHOICE(0x11f0e, DIALOG_PICKPOCKET, 0x11f11);
}

func void DIA_KATRINA_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x11f0e);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x11f0e);
}

func void DIA_KATRINA_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x11f0e);
}
