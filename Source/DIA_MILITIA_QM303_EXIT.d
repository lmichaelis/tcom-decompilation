instance DIA_MILITIA_QM303_EXIT(C_INFO) {
    NPC = 56207;
    NR = 999;
    CONDITION = DIA_MILITIA_QM303_EXIT_CONDITION;
    INFORMATION = DIA_MILITIA_QM303_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_MILITIA_QM303_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_MILITIA_QM303_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MILITIA_QM303_HELP(C_INFO) {
    NPC = 56207;
    NR = 1;
    CONDITION = DIA_MILITIA_QM303_HELP_CONDITION;
    INFORMATION = DIA_MILITIA_QM303_HELP_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MILITIA_QM303_HELP_CONDITION() {
    if ((LOG_GETSTATUS(MIS_QM303)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MILITIA_QM303_HELP_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Militia_QM303_Help_03_01");
    AI_STARTFACEANI(OTHER, S_SURPRISE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Militia_QM303_Help_15_02");
    AI_RESETFACEANI(OTHER);
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Militia_QM303_Help_03_03");
    if ((LOG_GETSTATUS(MIS_SQ416)) == (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Militia_QM303_Help_03_05");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Militia_QM303_Help_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Militia_QM303_Help_03_06");
    if ((QM303_FOUNDDEADMILITIA) == (TRUE)) {
        AI_STARTFACEANI(OTHER, S_SAD, 1, -(1));
        AI_OUTPUT(OTHER, SELF, "DIA_Militia_QM303_Help_15_07");
        AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Militia_QM303_Help_03_08");
    };
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Militia_QM303_Help_03_09");
    INFO_CLEARCHOICES(78302);
    INFO_ADDCHOICE(78302, "Unfortunately, no.", 78311);
    if (C_GOTINGRENDIENTS_ANYHEALTHPOTION(HERO)) {
        INFO_ADDCHOICE(78302, "Yes, here.", 78308);
    };
}

func void DIA_MILITIA_QM303_HELP_NEXT() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Militia_QM303_Help_Next_15_01");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Militia_QM303_Help_Next_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Militia_QM303_Help_Next_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Militia_QM303_Help_Next_03_04");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Militia_QM303_Help_Next_15_05");
    AI_LOGENTRY(TOPIC_QM303, LOG_QM303_WOUNDEDMILITIA_PACKET);
    INFO_CLEARCHOICES(78302);
    AI_STOPPROCESSINFOS(SELF);
    if ((QM303_MEETSHADOWBEAST) == (TRUE)) {
        AI_LOGENTRY(TOPIC_QM303, LOG_QM303_MEETSHADOWBEAST_V2);
    };
    if ((QM303_SHADOWBEASTISDEAD) == (TRUE)) {
        AI_LOGENTRY(TOPIC_QM303, LOG_QM303_SHADOWBEAST_DEAD_V2);
    };
}

func void DIA_MILITIA_QM303_THANKS() {
    AI_OUTPUT(SELF, OTHER, "DIA_Militia_QM303_Help_Yes_03_02");
}

func void DIA_MILITIA_QM303_THANKS_V2() {
    AI_OUTPUT(SELF, OTHER, "DIA_Militia_QM303_Help_Yes_03_03");
}

func void DIA_MILITIA_QM303_HELP_YES() {
    QM303_GIVEMILITIAPOTION = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Militia_QM303_Help_Yes_15_01");
    DIA_MILITIA_QM303_THANKS();
    B_STANDUP();
    B_GIVEANYPOTION_USEIT();
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    DIA_MILITIA_QM303_THANKS_V2();
    DIA_MILITIA_QM303_HELP_NEXT();
}

func void DIA_MILITIA_QM303_CANT() {
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Militia_QM303_Help_No_03_02");
}

func void DIA_MILITIA_QM303_WATCHOUT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Militia_QM303_Help_No_15_03");
}

func void DIA_MILITIA_QM303_HELP_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Militia_QM303_Help_No_15_01");
    DIA_MILITIA_QM303_CANT();
    DIA_MILITIA_QM303_WATCHOUT();
    DIA_MILITIA_QM303_HELP_NEXT();
}

instance DIA_MILITIA_QM303_GIVEPOTION(C_INFO) {
    NPC = 56207;
    NR = 10;
    CONDITION = DIA_MILITIA_QM303_GIVEPOTION_CONDITION;
    INFORMATION = DIA_MILITIA_QM303_GIVEPOTION_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = DIALOG_GIVEHEALINGPOTION;
}

func int DIA_MILITIA_QM303_GIVEPOTION_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_QM303)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 78302))) && ((QM303_GIVEMILITIAPOTION) == (FALSE))) && (C_GOTINGRENDIENTS_ANYHEALTHPOTION(HERO))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MILITIA_QM303_GIVEPOTION_INFO() {
    QM303_GIVEMILITIAPOTION = TRUE;
    DIA_MILITIA_QM303_THANKS();
    B_STANDUP();
    B_GIVEANYPOTION_USEIT();
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    DIA_MILITIA_QM303_THANKS_V2();
}

instance DIA_MILITIA_QM303_BACK(C_INFO) {
    NPC = 56207;
    NR = 90;
    CONDITION = DIA_MILITIA_QM303_BACK_CONDITION;
    INFORMATION = DIA_MILITIA_QM303_BACK_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Get ready, we can go home. (fast travel to the city)";
}

var int MILITIA_QM303_FASTTRAVEL;
func int DIA_MILITIA_QM303_BACK_CONDITION() {
    if (((((QM303_ALLTASKDONE) == (TRUE)) && ((MILITIA_QM303_FASTTRAVEL) == (FALSE))) && ((LOG_GETSTATUS(MIS_QM303)) == (LOG_RUNNING))) && (NPC_KNOWSINFO(OTHER, 78302))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MILITIA_QM303_BACK_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackEnd3");
    if ((((QM303_GIVEMILITIAPOTION) == (FALSE)) || ((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING))) || ((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING))) {
        DIA_MILITIA_QM303_CANT();
    };
    MILITIA_QM303_FASTTRAVEL = TRUE;
    AI_WAITTILLEND(SELF, OTHER);
    AI_FUNCTION(SELF, 63527);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MILITIA_QM303_AMBIENT(C_INFO) {
    NPC = 56207;
    NR = 2;
    CONDITION = DIA_MILITIA_QM303_AMBIENT_CONDITION;
    INFORMATION = DIA_MILITIA_QM303_AMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_MILITIA_QM303_AMBIENT_CONDITION() {
    if (((NPC_ISINSTATE(SELF, 61599)) && ((MILITIA_QM303_FASTTRAVEL) == (TRUE))) && ((QM303_GIVEMILITIAPOTION_CHECKTIME) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MILITIA_QM303_AMBIENT_INFO() {
    DIA_MILITIA_QM303_THANKS();
    DIA_MILITIA_QM303_WATCHOUT();
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MILITIA_QM303_AFTERQUEST(C_INFO) {
    NPC = 56207;
    NR = 1;
    CONDITION = DIA_MILITIA_QM303_AFTERQUEST_CONDITION;
    INFORMATION = DIA_MILITIA_QM303_AFTERQUEST_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MILITIA_QM303_AFTERQUEST_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM303)) == (LOG_SUCCESS)) && ((QM303_GIVEMILITIAPOTION_CHECKTIME) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MILITIA_QM303_AFTERQUEST_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Militia_QM303_AfterQuest_03_01");
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Militia_QM303_AfterQuest_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Militia_QM303_AfterQuest_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Militia_QM303_AfterQuest_15_04");
    AI_RESETFACEANI(OTHER);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, TOT);
    B_GIVEPLAYERXP(XP_QM303_BONUSEXP);
    CREATEINVITEMS(SELF, 34737, 1);
    B_GIVEINVITEMS(SELF, OTHER, 34737, 1);
}

