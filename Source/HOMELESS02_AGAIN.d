var int HOMELESS02_AGAIN;
var int HOMELESS02_ASK;
var int HOMELESS02_COUNT;
var int HOMELESS02_HELP;
instance DIA_HOMELESS02_EXIT(C_INFO) {
    NPC = 55334;
    NR = 999;
    CONDITION = DIA_HOMELESS02_EXIT_CONDITION;
    INFORMATION = DIA_HOMELESS02_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_BEGGAREND;
}

func int DIA_HOMELESS02_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_HOMELESS02_EXIT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Homeless02_EXIT_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Homeless02_EXIT_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Homeless02_EXIT_03_03");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HOMELESS02_HOMELESSHELLO(C_INFO) {
    NPC = 55334;
    NR = 1;
    CONDITION = DIA_HOMELESS02_HOMELESSHELLO_CONDITION;
    INFORMATION = DIA_HOMELESS02_HOMELESSHELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HOMELESS02_HOMELESSHELLO_CONDITION() {
    if (((SQ313_KICKDOOR_CHECK) == (TRUE)) && ((LOG_GETSTATUS(MIS_SQ313)) == (LOG_RUNNING))) {
        return FALSE;
    };
    return TRUE;
}

func void DIA_HOMELESS02_HOMELESSHELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Homeless02_HomelessHello_03_01");
}

instance DIA_HOMELESS02_WHATUP(C_INFO) {
    NPC = 55334;
    NR = 1;
    CONDITION = DIA_HOMELESS02_WHATUP_CONDITION;
    INFORMATION = DIA_HOMELESS02_WHATUP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What is it?";
}

func int DIA_HOMELESS02_WHATUP_CONDITION() {
    return TRUE;
}

func void DIA_HOMELESS02_WHATUP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Homeless02_WhatUp_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Homeless02_WhatUp_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Homeless02_WhatUp_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Homeless02_WhatUp_03_04");
}

instance DIA_HOMELESS02_HOMELESSGOLD(C_INFO) {
    NPC = 55334;
    NR = 2;
    CONDITION = DIA_HOMELESS02_HOMELESSGOLD_CONDITION;
    INFORMATION = DIA_HOMELESS02_HOMELESSGOLD_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_BEGGARMONEY;
}

func int DIA_HOMELESS02_HOMELESSGOLD_CONDITION() {
    if (((NPC_HASITEMS(OTHER, 34203)) >= (HOMELESS_ASKFORMONEY)) && (NPC_KNOWSINFO(OTHER, 72118))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOMELESS02_HOMELESSGOLD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Homeless02_HomelessGold_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 34203, HOMELESS_ASKFORMONEY);
    AI_OUTPUT(SELF, OTHER, "DIA_Homeless02_HomelessGold_03_02");
    HOMELESS02_AGAIN = WLD_GETDAY();
    HOMELESS02_HELP = TRUE;
    HOMELESS02_COUNT = (HOMELESS02_COUNT) + (1);
    if ((((HOMELESS02_COUNT) == (7)) || ((HOMELESS02_COUNT) == (14))) || ((HOMELESS02_COUNT) == (21))) {
        B_GIVEPLAYERXP(XP_EVENT_HOMLESS_BONUS);
    };
    if ((((HOMELESS02_COUNT) == (28)) || ((HOMELESS02_COUNT) == (35))) || ((HOMELESS02_COUNT) == (42))) {
        B_GIVEPLAYERXP((XP_EVENT_HOMLESS_BONUS) / (2));
    };
    if ((((HOMELESS02_COUNT) == (49)) || ((HOMELESS02_COUNT) == (56))) || ((HOMELESS02_COUNT) == (63))) {
        B_GIVEPLAYERXP((XP_EVENT_HOMLESS_BONUS) / (5));
    };
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HOMELESS02_AMBIENTTALK(C_INFO) {
    NPC = 55334;
    NR = 3;
    CONDITION = DIA_HOMELESS02_AMBIENTTALK_CONDITION;
    INFORMATION = DIA_HOMELESS02_AMBIENTTALK_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_HOMELESS02_AMBIENTTALK_CONDITION() {
    if (((((HOMELESS02_AGAIN) == (WLD_GETDAY())) && (NPC_ISINSTATE(SELF, 61599))) && ((HOMELESS02_HELP) == (TRUE))) && ((SELF.AIVAR[66]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOMELESS02_AMBIENTTALK_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Homeless02_AmbientTalk_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HOMELESS02_INEEDGOLD(C_INFO) {
    NPC = 55334;
    NR = 4;
    CONDITION = DIA_HOMELESS02_INEEDGOLD_CONDITION;
    INFORMATION = DIA_HOMELESS02_INEEDGOLD_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_HOMELESS02_INEEDGOLD_CONDITION() {
    if (((((HOMELESS02_AGAIN) != (WLD_GETDAY())) && ((HOMELESS02_ASK) != (WLD_GETDAY()))) && ((HOMELESS02_HELP) == (TRUE))) && ((SELF.AIVAR[66]) == (FALSE))) {
        if (((SQ313_KICKDOOR_CHECK) == (TRUE)) && ((LOG_GETSTATUS(MIS_SQ313)) == (LOG_RUNNING))) {
            return FALSE;
        };
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOMELESS02_INEEDGOLD_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Homeless02_INeedGold_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Homeless02_INeedGold_03_02");
    HOMELESS02_ASK = WLD_GETDAY();
}

instance DIA_HOMELESS02_IHELPED(C_INFO) {
    NPC = 55334;
    NR = 5;
    CONDITION = DIA_HOMELESS02_IHELPED_CONDITION;
    INFORMATION = DIA_HOMELESS02_IHELPED_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I already helped you once.";
}

func int DIA_HOMELESS02_IHELPED_CONDITION() {
    if ((HOMELESS02_HELP) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOMELESS02_IHELPED_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Homeless02_IHelped_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Homeless02_IHelped_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Homeless02_IHelped_03_03");
}

instance DIA_HOMELESS02_SCARED(C_INFO) {
    NPC = 55334;
    NR = 6;
    CONDITION = DIA_HOMELESS02_SCARED_CONDITION;
    INFORMATION = DIA_HOMELESS02_SCARED_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_HOMELESS02_SCARED_CONDITION() {
    if (((SELF.AIVAR[66]) == (TRUE)) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOMELESS02_SCARED_INFO() {
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Homeless02_SCARED_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

