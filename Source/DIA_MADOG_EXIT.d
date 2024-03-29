instance DIA_MADOG_EXIT(C_INFO) {
    NPC = 53368;
    NR = 999;
    CONDITION = DIA_MADOG_EXIT_CONDITION;
    INFORMATION = DIA_MADOG_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_MADOG_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_MADOG_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

const string MADOG_CHECKPOINT = "PARTM4_VOLKER_HOUSE_02";
var int MADOG_FIRSTDIALOGUE;
instance DIA_MADOG_FIRSTWARN(C_INFO) {
    NPC = 53368;
    NR = 1;
    CONDITION = DIA_MADOG_FIRSTWARN_CONDITION;
    INFORMATION = DIA_MADOG_FIRSTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_MADOG_FIRSTWARN_CONDITION() {
    if ((MADOG_CANENTERVOLKERHOUSE) == (TRUE)) {
        SELF.AIVAR[14] = TRUE;
    };
    SELF.AIVAR[14] = FALSE;
    if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (700)) {
        if (((((SELF.AIVAR[12]) == (GP_NONE)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_REFUSETALK(SELF)) == (FALSE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_MADOG_ENTER() {
    MADOG_CANENTERVOLKERHOUSE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Madog_Q308SeeBoss_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Madog_Q308SeeBoss_03_02");
    AI_LOGENTRY(TOPIC_Q308, LOG_Q308_MADOG_ENTERVOLKERHOUSE);
    AI_STOPPROCESSINFOS(SELF);
}

func void MADOG_KILLHERO() {
    OTHER.AIVAR[13] = 0;
    SELF.AIVAR[12] = GP_NONE;
    AI_DRAWWEAPON(SELF);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_GUARDSTOPSINTRUDER, 1);
}

func void DIA_MADOG_FIRSTWARN_INFO() {
    if ((Q308_VOLKERHOUSECUTSCENE) == (TRUE)) {
        DIA_MADOG_ENTER();
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Madog_FIRSTWARN_03_01");
    if ((MADOG_FIRSTDIALOGUE) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) {
            AI_OUTPUT(OTHER, SELF, "DIA_Madog_FIRSTWARN_15_02");
            AI_OUTPUT(SELF, OTHER, "DIA_Madog_FIRSTWARN_03_03");
            AI_OUTPUT(OTHER, SELF, "DIA_Madog_FIRSTWARN_15_04");
            AI_OUTPUT(SELF, OTHER, "DIA_Madog_FIRSTWARN_03_05");
        };
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Madog_FIRSTWARN_03_06");
    if ((MADOG_FIRSTDIALOGUE) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) {
            MADOG_FIRSTDIALOGUE = TRUE;
            INFO_CLEARCHOICES(69000);
            INFO_ADDCHOICE(69000, "(Move along)", 69007);
            INFO_ADDCHOICE(69000, "Your boss is inside?", 69006);
            INFO_ADDCHOICE(69000, "Let me through, now!", 69005);
        };
    };
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, MADOG_CHECKPOINT);
    SELF.AIVAR[12] = GP_FIRSTWARNGIVEN;
}

func void DIA_MADOG_FIRSTWARN_PASS() {
    if ((OTHER.GUILD) == (GIL_MIL)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Madog_FIRSTWARN_Pass_15_01");
    };
    if ((OTHER.GUILD) == (GIL_SLD)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Madog_FIRSTWARN_Pass_15_02");
    };
    AI_WAITTILLEND(SELF, OTHER);
    AI_PLAYANI(SELF, T_LAUGH);
    AI_OUTPUT(SELF, OTHER, "DIA_Madog_FIRSTWARN_Pass_03_03");
}

func void DIA_MADOG_FIRSTWARN_INSIDE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Madog_FIRSTWARN_Inside_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Madog_FIRSTWARN_Inside_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Madog_FIRSTWARN_Inside_03_03");
}

func void DIA_MADOG_FIRSTWARN_BYE() {
    INFO_CLEARCHOICES(69000);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MADOG_SECONDWARN(C_INFO) {
    NPC = 53368;
    NR = 1;
    CONDITION = DIA_MADOG_SECONDWARN_CONDITION;
    INFORMATION = DIA_MADOG_SECONDWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_MADOG_SECONDWARN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_FIRSTWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, MADOG_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MADOG_SECONDWARN_INFO() {
    if ((Q308_VOLKERHOUSECUTSCENE) == (TRUE)) {
        DIA_MADOG_ENTER();
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Madog_SECONDWARN_03_01");
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, MADOG_CHECKPOINT);
    SELF.AIVAR[12] = GP_SECONDWARNGIVEN;
}

instance DIA_MADOG_LASTWARN(C_INFO) {
    NPC = 53368;
    NR = 1;
    CONDITION = DIA_MADOG_LASTWARN_CONDITION;
    INFORMATION = DIA_MADOG_LASTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_MADOG_LASTWARN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_SECONDWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, MADOG_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MADOG_LASTWARN_INFO() {
    if ((Q308_VOLKERHOUSECUTSCENE) == (TRUE)) {
        DIA_MADOG_ENTER();
    };
    MADOG_KILLHERO();
}

instance DIA_MADOG_Q308SEEBOSS(C_INFO) {
    NPC = 53368;
    NR = 1;
    CONDITION = DIA_MADOG_Q308SEEBOSS_CONDITION;
    INFORMATION = DIA_MADOG_Q308SEEBOSS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can I see your boss now?";
}

func int DIA_MADOG_Q308SEEBOSS_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 83016))) && ((Q308_VOLKERHOUSECUTSCENE) == (TRUE))) && ((MADOG_CANENTERVOLKERHOUSE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MADOG_Q308SEEBOSS_INFO() {
    DIA_MADOG_ENTER();
}

instance DIA_MADOG_Q308_BLOOD(C_INFO) {
    NPC = 53368;
    NR = 1;
    CONDITION = DIA_MADOG_Q308_BLOOD_CONDITION;
    INFORMATION = DIA_MADOG_Q308_BLOOD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MADOG_Q308_BLOOD_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 73494)) && ((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MADOG_Q308_BLOOD_INFO() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Madog_Q308_Blood_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Madog_Q308_Blood_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Madog_Q308_Blood_03_03");
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q308, LOG_Q308_MADOG_BLOOD);
}

