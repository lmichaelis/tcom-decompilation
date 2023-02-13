instance DIA_NAARS_EXIT(C_INFO) {
    NPC = 56424;
    NR = 999;
    CONDITION = DIA_NAARS_EXIT_CONDITION;
    INFORMATION = DIA_NAARS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_NAARS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_NAARS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_NAARS_HELLO(C_INFO) {
    NPC = 56424;
    NR = 1;
    CONDITION = DIA_NAARS_HELLO_CONDITION;
    INFORMATION = DIA_NAARS_HELLO_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

var int NARRAS_HELLO_FIRSTTIME;
var int NAARS_CARSTENPROTECTION;
var int NARRAS_FIGHTTIME;
var int NAARS_TIMECHECK;
var int NAARS_TIME;
func int DIA_NAARS_HELLO_CONDITION() {
    if ((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) {
        return FALSE;
    };
    if ((NARRAS_FIGHTTIME) == (0)) {
        if (((NAARS_TIME) == (0)) || (((NAARS_TIME) == (1)) && ((NAARS_TIMECHECK) <= ((WLD_GETDAY()) - (1))))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_NAARS_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Naars_Hello_03_01");
    INFO_CLEARCHOICES(79345);
    if ((SQ119_CARSTENPROTECTION) == (TRUE)) {
        if ((NAARS_CARSTENPROTECTION) == (FALSE)) {
            INFO_ADDCHOICE(79345, "I'm under Bloodwyn's protection..", 79355);
        };
    };
    if ((NARRAS_HELLO_FIRSTTIME) == (FALSE)) {
        INFO_ADDCHOICE(79345, "Just like that, without any introduction? What am I supposed to pay you for?", 79353);
    };
    INFO_ADDCHOICE(79345, "I'm not paying you anything.", 79353);
    if ((NPC_HASITEMS(OTHER, 33660)) >= (2)) {
        INFO_ADDCHOICE(79345, "Take those nuggets and leave me alone.", 79354);
    };
    NAARS_TIME = 1;
    NAARS_TIMECHECK = WLD_GETDAY();
}

func void DIA_NAARS_HELLO_WHAT() {
    SQ119_SOMEONEATTACKEDUS = TRUE;
    SELF.AIVAR[45] = AF_RUNNING;
    NARRAS_FIGHTTIME = 1;
    if ((NARRAS_HELLO_FIRSTTIME) == (FALSE)) {
        NARRAS_HELLO_FIRSTTIME = TRUE;
        AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
        AI_OUTPUT(OTHER, SELF, "DIA_Naars_Hello_What_15_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Naars_Hello_What_03_02");
    };
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Naars_Hello_What_15_03");
    AI_WAITTILLEND(SELF, OTHER);
    INFO_CLEARCHOICES(79345);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_SUDDENENEMYINFERNO, 1);
    AI_RESETFACEANI(OTHER);
}

func void DIA_NAARS_HELLO_TAKEIT() {
    NARRAS_HELLO_FIRSTTIME = TRUE;
    NPC_REMOVEINVITEMS(SELF, 33660, 2);
    AI_OUTPUT(OTHER, SELF, "DIA_Naars_Hello_TakeIt_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 33660, 2);
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Naars_Hello_TakeIt_03_02");
    INFO_CLEARCHOICES(79345);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_NAARS_HELLO_CARSTEN() {
    NAARS_CARSTENPROTECTION = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Naars_Hello_Carsten_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Naars_Hello_Carsten_03_02");
}

instance DIA_NAARS_AFTERFIGHT(C_INFO) {
    NPC = 56424;
    NR = 1;
    CONDITION = DIA_NAARS_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_NAARS_AFTERFIGHT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_NAARS_AFTERFIGHT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) {
        return FALSE;
    };
    if ((NARRAS_FIGHTTIME) == (1)) {
        if (((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) {
            if ((SELF.AIVAR[45]) != (AF_NONE)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_NAARS_AFTERFIGHT_INFO() {
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        NARRAS_FIGHTTIME = 0;
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Naars_AfterFight_03_01");
    };
    NARRAS_FIGHTTIME = 2;
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Naars_AfterFight_03_02");
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
}

instance DIA_NAARS_QA306_HELLO(C_INFO) {
    NPC = 56424;
    NR = 1;
    CONDITION = DIA_NAARS_QA306_HELLO_CONDITION;
    INFORMATION = DIA_NAARS_QA306_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_NAARS_QA306_HELLO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && ((QA306_GOTOARAXOSMINE) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int NAARS_QA306_GIVENUGGET;
func void DIA_NAARS_QA306_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Naars_QA306_Hello_03_01");
    AI_LOGENTRY(TOPIC_QA306, LOG_QA306_NAARS_QUEUE);
    INFO_CLEARCHOICES(79359);
    INFO_ADDCHOICE(79359, "No, thanks.", 79363);
    INFO_ADDCHOICE(79359, "Here, I'll be back soon. (Give 2 nuggets)", 79364);
}

func void DIA_NAARS_QA306_HELLO_NO() {
    NAARS_QA306_GIVENUGGET = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Naars_QA306_Hello_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Naars_QA306_Hello_No_03_02");
    INFO_CLEARCHOICES(79359);
    AI_RESETFACEANI(SELF);
}

func void DIA_NAARS_QA306_HELLO_YES() {
    if ((NPC_HASITEMS(OTHER, 33660)) >= (2)) {
        QA306_PAYDNAARS = 1;
        QA306_PAYDNAARS_HOURS = WLD_GETHOUR();
        QA306_PAYDNAARS_DAY = WLD_GETDAY();
        NPC_REMOVEINVITEMS(SELF, 33660, 2);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_GIVEINVITEMS(OTHER, SELF, 33660, 2);
        AI_OUTPUT(OTHER, SELF, "DIA_Naars_QA306_Hello_Yes_15_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Naars_QA306_Hello_Yes_03_02");
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    INFO_CLEARCHOICES(79359);
    AI_RESETFACEANI(SELF);
}

instance DIA_NAARS_QA306_GIVENUGGET(C_INFO) {
    NPC = 56424;
    NR = 1;
    CONDITION = DIA_NAARS_QA306_GIVENUGGET_CONDITION;
    INFORMATION = DIA_NAARS_QA306_GIVENUGGET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Here, I'll be back soon. (Give 2 nuggets)";
}

func int DIA_NAARS_QA306_GIVENUGGET_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && ((NAARS_QA306_GIVENUGGET) == (TRUE))) && ((QA306_PAYDNAARS) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NAARS_QA306_GIVENUGGET_INFO() {
    DIA_NAARS_QA306_HELLO_YES();
}

instance DIA_NAARS_PICKPOCKET(C_INFO) {
    NPC = 56424;
    NR = 900;
    CONDITION = DIA_NAARS_PICKPOCKET_CONDITION;
    INFORMATION = DIA_NAARS_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_NAARS_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NAARS_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(79368);
    INFO_ADDCHOICE(79368, DIALOG_BACK, 79372);
    INFO_ADDCHOICE(79368, DIALOG_PICKPOCKET, 79371);
}

func void DIA_NAARS_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 36375, 1);
        B_GIVEINVITEMS(SELF, OTHER, 36375, 1);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(79368);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(79368);
}

func void DIA_NAARS_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(79368);
}
