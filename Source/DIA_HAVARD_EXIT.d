instance DIA_HAVARD_EXIT(C_INFO) {
    NPC = 58343;
    NR = 999;
    CONDITION = DIA_HAVARD_EXIT_CONDITION;
    INFORMATION = DIA_HAVARD_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_HAVARD_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_HAVARD_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HAVARD_Q404_NEEDHELP(C_INFO) {
    NPC = 58343;
    NR = 1;
    CONDITION = DIA_HAVARD_Q404_NEEDHELP_CONDITION;
    INFORMATION = DIA_HAVARD_Q404_NEEDHELP_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HAVARD_Q404_NEEDHELP_CONDITION() {
    if ((KAPITEL) < (5)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HAVARD_Q404_NEEDHELP_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_NeedHelp_03_01");
    INFO_CLEARCHOICES(82477);
    INFO_ADDCHOICE(82477, "Are you up to something?", 82481);
    INFO_ADDCHOICE(82477, "I've heard enough about being a city boy...", 82480);
}

func void DIA_HAVARD_Q404_NEEDHELP_ENOUGH() {
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Havard_Q404_NeedHelp_Enough_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_NeedHelp_Enough_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

func void DIA_HAVARD_Q404_NEEDHELP_POINT() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Havard_Q404_NeedHelp_Point_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_NeedHelp_Point_03_02");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_NeedHelp_Point_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_NeedHelp_Point_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_NeedHelp_Point_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Havard_Q404_NeedHelp_Point_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_NeedHelp_Point_03_07");
    INFO_CLEARCHOICES(82477);
    INFO_ADDCHOICE(82477, "Okay, I'll look for your friend.", 82483);
    INFO_ADDCHOICE(82477, "Why didn't you move inside yourself?", 82482);
}

func void DIA_HAVARD_Q404_NEEDHELP_POINT_WHY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Havard_Q404_NeedHelp_Why_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_NeedHelp_Why_03_02");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_NeedHelp_Why_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_NeedHelp_Why_03_04");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_NeedHelp_Why_03_05");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_NeedHelp_Why_03_06");
}

func void DIA_HAVARD_Q404_NEEDHELP_POINT_OKAY() {
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Havard_Q404_NeedHelp_Okay_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_NeedHelp_Okay_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_NeedHelp_Okay_03_03");
    INFO_CLEARCHOICES(82477);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_LOGENTRY(TOPIC_Q404, LOG_Q404_SEARCHGAUR);
}

instance DIA_HAVARD_Q404_AFTERMINE(C_INFO) {
    NPC = 58343;
    NR = 1;
    CONDITION = DIA_HAVARD_Q404_AFTERMINE_CONDITION;
    INFORMATION = DIA_HAVARD_Q404_AFTERMINE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HAVARD_Q404_AFTERMINE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q404)) == (LOG_SUCCESS)) && ((KAPITEL) < (5))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int HAVARD_Q404_COUNTEXP;
var int HAVARD_Q404_HELPED;
func void DIA_HAVARD_Q404_AFTERMINE_INFO() {
    HAVARD_Q404_COUNTEXP = 0;
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_AfterMine_03_01");
    INFO_CLEARCHOICES(82484);
    if ((Q404_GAURRING_TAKEITEM) == (TRUE)) {
        INFO_ADDCHOICE(82484, "I'm sorry, your friend is dead.", 82490);
    };
    INFO_ADDCHOICE(82484, "I'm sorry, I didn't find your friend.", 82489);
}

func void DIA_HAVARD_Q404_AFTERMINE_NO() {
    HAVARD_Q404_COUNTEXP = (HAVARD_Q404_COUNTEXP) + (1);
    AI_STARTFACEANI(OTHER, S_SAD, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Havard_Q404_AfterMine_No_15_01");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_AfterMine_No_03_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_AfterMine_No_03_03");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_AfterMine_No_03_04");
    INFO_CLEARCHOICES(82484);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    B_GIVEPLAYERXP((XP_Q404_HAVARDHELP) * (HAVARD_Q404_COUNTEXP));
    NPC_EXCHANGEROUTINE(SELF, "Q404_MINE");
}

func void DIA_HAVARD_Q404_AFTERMINE_YES() {
    HAVARD_Q404_COUNTEXP = (HAVARD_Q404_COUNTEXP) + (1);
    HAVARD_Q404_HELPED = TRUE;
    AI_STARTFACEANI(OTHER, S_SAD, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Havard_Q404_AfterMine_Yes_15_01");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_AfterMine_Yes_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_AfterMine_Yes_03_03");
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(82484);
    INFO_ADDCHOICE(82484, "I think he fell from a height.", 82492);
    INFO_ADDCHOICE(82484, "He fell fighting an entire horde of crawlers.", 82493);
}

func void DIA_HAVARD_Q404_AFTERMINE_NEXT() {
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_AfterMine_Next_03_01");
    INFO_CLEARCHOICES(82484);
    if ((Q404_GAURCORPSE_BURNED) == (TRUE)) {
        INFO_ADDCHOICE(82484, "Yes, he will be able to have peace now.", 82495);
    };
    INFO_ADDCHOICE(82484, "Unfortunately, there were too many of those beasts out there, I couldn't take any chances.", 82496);
}

func void DIA_HAVARD_Q404_AFTERMINE_YES_FALL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Havard_Q404_AfterMine_Fall_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_AfterMine_Fall_03_02");
    DIA_HAVARD_Q404_AFTERMINE_NEXT();
}

func void DIA_HAVARD_Q404_AFTERMINE_YES_FIGHT() {
    HAVARD_Q404_COUNTEXP = (HAVARD_Q404_COUNTEXP) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Havard_Q404_AfterMine_Fight_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_AfterMine_Fight_03_02");
    DIA_HAVARD_Q404_AFTERMINE_NEXT();
}

func void DIA_HAVARD_Q404_AFTERMINE_FINISH() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_AfterMine_Finish_03_01");
    INFO_CLEARCHOICES(82484);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    NPC_EXCHANGEROUTINE(SELF, "Q404_TAVERN");
    B_GIVEPLAYERXP((XP_Q404_HAVARDHELP) * (HAVARD_Q404_COUNTEXP));
}

func void DIA_HAVARD_Q404_AFTERMINE_YES_FIGHT_NEXT_BURNYES() {
    HAVARD_Q404_COUNTEXP = (HAVARD_Q404_COUNTEXP) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Havard_Q404_AfterMine_BurnYes_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_AfterMine_BurnYes_03_02");
    DIA_HAVARD_Q404_AFTERMINE_FINISH();
}

func void DIA_HAVARD_Q404_AFTERMINE_YES_FIGHT_NEXT_BURNNO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Havard_Q404_AfterMine_BurnNo_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q404_AfterMine_BurnNo_03_02");
    DIA_HAVARD_Q404_AFTERMINE_FINISH();
}

instance DIA_HAVARD_WHAT(C_INFO) {
    NPC = 58343;
    NR = 1;
    CONDITION = DIA_HAVARD_WHAT_CONDITION;
    INFORMATION = DIA_HAVARD_WHAT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HAVARD_WHAT_CONDITION() {
    if (((KAPITEL) == (5)) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HAVARD_WHAT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Havard_What_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_What_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_What_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_What_03_05");
    if ((HAVARD_Q404_HELPED) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Havard_What_03_06");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_What_03_07");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_HAVARD_Q509_QUESTION(C_INFO) {
    NPC = 58343;
    NR = 1;
    CONDITION = DIA_HAVARD_Q509_QUESTION_CONDITION;
    INFORMATION = DIA_HAVARD_Q509_QUESTION_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Now I'm the one who needs your help.";
}

func int DIA_HAVARD_Q509_QUESTION_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 82497)) && ((Q509_COUNTWARRIORS) < (4))) && ((LOG_GETSTATUS(MIS_Q509)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HAVARD_Q509_QUESTION_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Havard_Q509_Question_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Havard_Q509_Question_15_02");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q509_Question_03_03");
    INFO_CLEARCHOICES(82500);
    INFO_ADDCHOICE(82500, "I'm looking for a certain artifact...", 82503);
}

func void DIA_HAVARD_Q509_QUESTION_ARTIFACT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Havard_Q509_Question_Artifact_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q509_Question_Artifact_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q509_Question_Artifact_03_03");
    INFO_CLEARCHOICES(82500);
    B_STANDUP();
    AI_STOPPROCESSINFOS(SELF);
    B_GIVEPLAYERXP(XP_VARHDAL_RECRUIT);
    SELF.AIVAR[15] = TRUE;
    SELF.FLAGS = 2;
    Q509_HAVARDVOLFZACKE = 1;
    NPC_EXCHANGEROUTINE(SELF, "Q509_WAIT");
    AI_LOGENTRY(TOPIC_Q509, LOG_Q509_HAVARD);
    AI_FUNCTION(SELF, 63308);
    AI_FUNCTION(SELF, 82504);
}

func void Q509_FARMERSRTN() {
    B_STARTOTHERROUTINE(BAU_724_PAULUS, START);
    NPC_REFRESH(BAU_724_PAULUS);
    B_STARTOTHERROUTINE(BAU_11019_FARMER, START);
    NPC_REFRESH(BAU_11019_FARMER);
    B_STARTOTHERROUTINE(BAU_11017_FARMER, START);
    NPC_REFRESH(BAU_11017_FARMER);
}

instance DIA_HAVARD_Q509_FEEL(C_INFO) {
    NPC = 58343;
    NR = 90;
    CONDITION = DIA_HAVARD_Q509_FEEL_CONDITION;
    INFORMATION = DIA_HAVARD_Q509_FEEL_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the morale?";
}

func int DIA_HAVARD_Q509_FEEL_CONDITION() {
    if (((NPC_GETDISTTOWP(SELF, "PART5_Q509_HAVARD")) <= (2000)) && ((Q509_HAVARDVOLFZACKE) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HAVARD_Q509_FEEL_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackMorale3");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Havard_Q509_Feel_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_HAVARD_PICKPOCKET(C_INFO) {
    NPC = 58343;
    NR = 900;
    CONDITION = DIA_HAVARD_PICKPOCKET_CONDITION;
    INFORMATION = DIA_HAVARD_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120;
}

func int DIA_HAVARD_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HAVARD_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(82508);
    INFO_ADDCHOICE(82508, DIALOG_BACK, 82512);
    INFO_ADDCHOICE(82508, DIALOG_PICKPOCKET, 82511);
}

func void DIA_HAVARD_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(82508);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(82508);
}

func void DIA_HAVARD_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(82508);
}

