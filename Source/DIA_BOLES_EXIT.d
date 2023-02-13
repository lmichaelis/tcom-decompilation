instance DIA_BOLES_EXIT(C_INFO) {
    NPC = 58003;
    NR = 999;
    CONDITION = DIA_BOLES_EXIT_CONDITION;
    INFORMATION = DIA_BOLES_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_BOLES_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_BOLES_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BOLES_BUSY(C_INFO) {
    NPC = 58003;
    NR = 1;
    CONDITION = DIA_BOLES_BUSY_CONDITION;
    INFORMATION = DIA_BOLES_BUSY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_BOLES_BUSY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ206)) != (LOG_RUNNING)) && (NPC_ISINSTATE(SELF, 61599))) && ((SQ206_AFTERQUEST) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BOLES_BUSY_INFO() {
    DIA_IMBUSY_ANGRY();
}

instance DIA_BOLES_FIRSTWARN(C_INFO) {
    NPC = 58003;
    NR = 1;
    CONDITION = DIA_BOLES_FIRSTWARN_CONDITION;
    INFORMATION = DIA_BOLES_FIRSTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

const string BOLES_CHECKPOINT = "PART15_PATH_112";
var int BOLES_ALLOWUSTOGO;
func int DIA_BOLES_FIRSTWARN_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ206)) == (LOG_RUNNING)) {
        if ((BOLES_ALLOWUSTOGO) == (TRUE)) {
            SELF.AIVAR[14] = TRUE;
        };
        if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (700)) {
            if (((((SELF.AIVAR[12]) == (GP_NONE)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_REFUSETALK(SELF)) == (FALSE))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_BOLES_FIRSTWARN_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Boles_FIRSTWARN_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Boles_FIRSTWARN_03_02");
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, BOLES_CHECKPOINT);
    SELF.AIVAR[12] = GP_FIRSTWARNGIVEN;
}

instance DIA_BOLES_SECONDWARN(C_INFO) {
    NPC = 58003;
    NR = 1;
    CONDITION = DIA_BOLES_SECONDWARN_CONDITION;
    INFORMATION = DIA_BOLES_SECONDWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_BOLES_SECONDWARN_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ206)) == (LOG_RUNNING)) {
        if (((((SELF.AIVAR[12]) == (GP_FIRSTWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, BOLES_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_BOLES_SECONDWARN_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Boles_SECONDWARN_03_01");
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, BOLES_CHECKPOINT);
    SELF.AIVAR[12] = GP_SECONDWARNGIVEN;
}

instance DIA_BOLES_LASTWARN(C_INFO) {
    NPC = 58003;
    NR = 1;
    CONDITION = DIA_BOLES_LASTWARN_CONDITION;
    INFORMATION = DIA_BOLES_LASTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_BOLES_LASTWARN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_SECONDWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, BOLES_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BOLES_LASTWARN_INFO() {
    OTHER.AIVAR[13] = 0;
    SELF.AIVAR[12] = GP_NONE;
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    B_SAY(SELF, OTHER, "$YouAskedForIt");
    AI_DRAWWEAPON(SELF);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_GUARDSTOPSINTRUDER, 1);
}

instance DIA_BOLES_SQ206_GIVEBEER(C_INFO) {
    NPC = 58003;
    NR = 1;
    CONDITION = DIA_BOLES_SQ206_GIVEBEER_CONDITION;
    INFORMATION = DIA_BOLES_SQ206_GIVEBEER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Here, take it. (Give beer)";
}

func int DIA_BOLES_SQ206_GIVEBEER_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ206)) == (LOG_RUNNING)) && (C_GOTANYKINDOFBEER(HERO))) && ((BOLES_ALLOWUSTOGO) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BOLES_SQ206_MARVIN_GIVE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Boles_SQ206_GiveBeer_15_01");
}

func void DIA_BOLES_SQ206_BOLES_THANKS() {
    BOLES_ALLOWUSTOGO = TRUE;
    AI_OUTPUT(SELF, OTHER, "DIA_Boles_SQ206_GiveBeer_03_02");
}

func void DIA_BOLES_SQ206_GIVEBEER_INFO() {
    SQ206_BOLES_RESULT = 1;
    DIA_BOLES_SQ206_MARVIN_GIVE();
    B_GIVEANYBEER_USEIT();
    DIA_BOLES_SQ206_BOLES_THANKS();
    AI_LOGENTRY(TOPIC_SQ206, LOG_SQ206_BOLESV1);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BOLES_SQ206_GIVEGOLD(C_INFO) {
    NPC = 58003;
    NR = 2;
    CONDITION = DIA_BOLES_SQ206_GIVEGOLD_CONDITION;
    INFORMATION = DIA_BOLES_SQ206_GIVEGOLD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Here, take it. (Give 20 GP)";
}

func int DIA_BOLES_SQ206_GIVEGOLD_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ206)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 34203)) >= (SQ206_BOLESPASSAGE))) && ((BOLES_ALLOWUSTOGO) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BOLES_SQ206_GIVEGOLD_INFO() {
    SQ206_BOLES_RESULT = 1;
    DIA_BOLES_SQ206_MARVIN_GIVE();
    NPC_REMOVEINVITEMS(SELF, 34203, SQ206_BOLESPASSAGE);
    DIA_BOLES_SQ206_BOLES_THANKS();
    B_GIVEINVITEMS(OTHER, SELF, 34203, SQ206_BOLESPASSAGE);
    AI_LOGENTRY(TOPIC_SQ206, LOG_SQ206_BOLESV2);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BOLES_SQ206_KNOW(C_INFO) {
    NPC = 58003;
    NR = 3;
    CONDITION = DIA_BOLES_SQ206_KNOW_CONDITION;
    INFORMATION = DIA_BOLES_SQ206_KNOW_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You know how few people walk this way anyway?";
}

func int DIA_BOLES_SQ206_KNOW_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ206)) == (LOG_RUNNING)) && ((BOLES_ALLOWUSTOGO) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BOLES_SQ206_KNOW_INFO() {
    SQ206_BOLES_RESULT = 2;
    BOLES_ALLOWUSTOGO = TRUE;
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Boles_SQ206_Know_15_01");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Boles_SQ206_Know_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Boles_SQ206_Know_15_03");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Boles_SQ206_Know_03_04");
    AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Boles_SQ206_Know_15_05");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Boles_SQ206_Know_03_06");
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_LOGENTRY(TOPIC_SQ206, LOG_SQ206_BOLESV3);
    NPC_EXCHANGEROUTINE(SELF, "SQ206_VINEYARD");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BOLES_SQ206_BETTER(C_INFO) {
    NPC = 58003;
    NR = 4;
    CONDITION = DIA_BOLES_SQ206_BETTER_CONDITION;
    INFORMATION = DIA_BOLES_SQ206_BETTER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Don't you have something better to do?";
}

func int DIA_BOLES_SQ206_BETTER_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ206)) == (LOG_RUNNING)) && ((BOLES_ALLOWUSTOGO) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BOLES_SQ206_BETTER_INFO() {
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Boles_SQ206_Better_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Boles_SQ206_Better_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Boles_SQ206_Better_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Boles_SQ206_Better_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Boles_SQ206_Better_15_05");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_BOLES_SQ206_YOUCANGO(C_INFO) {
    NPC = 58003;
    NR = 1;
    CONDITION = DIA_BOLES_SQ206_YOUCANGO_CONDITION;
    INFORMATION = DIA_BOLES_SQ206_YOUCANGO_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_BOLES_SQ206_YOUCANGO_CONDITION() {
    if ((((SQ206_BOLES_RESULT) == (1)) && ((BOLES_ALLOWUSTOGO) == (TRUE))) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BOLES_SQ206_YOUCANGO_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Boles_SQ206_YouCanGo_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BOLES_SQ206_NICEVINEYARD(C_INFO) {
    NPC = 58003;
    NR = 4;
    CONDITION = DIA_BOLES_SQ206_NICEVINEYARD_CONDITION;
    INFORMATION = DIA_BOLES_SQ206_NICEVINEYARD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_BOLES_SQ206_NICEVINEYARD_CONDITION() {
    if ((((((SQ206_BOLES_RESULT) == (2)) && ((BOLES_ALLOWUSTOGO) == (TRUE))) && (NPC_ISINSTATE(SELF, 61599))) && ((NPC_GETDISTTOWP(SELF, SELF.WP)) <= (1000))) && ((SQ206_AFTERQUEST) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BOLES_SQ206_NICEVINEYARD_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Boles_SQ206_NiceVineyard_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BOLES_SQ206_AFTERQUEST(C_INFO) {
    NPC = 58003;
    NR = 5;
    CONDITION = DIA_BOLES_SQ206_AFTERQUEST_CONDITION;
    INFORMATION = DIA_BOLES_SQ206_AFTERQUEST_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_BOLES_SQ206_AFTERQUEST_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ206)) == (LOG_SUCCESS)) && ((SQ206_AFTERQUEST) == (2))) && ((SQ206_BOLES_RESULT) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BOLES_SQ206_AFTERQUEST_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Boles_SQ206_AfterQuest_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Boles_SQ206_AfterQuest_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Boles_SQ206_AfterQuest_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Boles_SQ206_AfterQuest_03_04");
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
    CREATEINVITEMS(SELF, 36391, 1);
    B_GIVEINVITEMS(SELF, OTHER, 36391, 1);
}

instance DIA_BOLES_SQ206_NICEVINEYARDV2(C_INFO) {
    NPC = 58003;
    NR = 4;
    CONDITION = DIA_BOLES_SQ206_NICEVINEYARDV2_CONDITION;
    INFORMATION = DIA_BOLES_SQ206_NICEVINEYARDV2_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_BOLES_SQ206_NICEVINEYARDV2_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 86412)) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BOLES_SQ206_NICEVINEYARDV2_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Boles_SQ206_NiceVineyard_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BOLES_PICKPOCKET(C_INFO) {
    NPC = 58003;
    NR = 900;
    CONDITION = DIA_BOLES_PICKPOCKET_CONDITION;
    INFORMATION = DIA_BOLES_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_BOLES_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BOLES_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(86418);
    INFO_ADDCHOICE(86418, DIALOG_BACK, 86422);
    INFO_ADDCHOICE(86418, DIALOG_PICKPOCKET, 86421);
}

func void DIA_BOLES_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(86418);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(86418);
}

func void DIA_BOLES_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(86418);
}

