instance DIA_EDMUND_EXIT(C_INFO) {
    NPC = 57761;
    NR = 999;
    CONDITION = DIA_EDMUND_EXIT_CONDITION;
    INFORMATION = DIA_EDMUND_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_EDMUND_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_EDMUND_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_EDMUND_YOUSCAREDME(C_INFO) {
    NPC = 57761;
    NR = 1;
    CONDITION = DIA_EDMUND_YOUSCAREDME_CONDITION;
    INFORMATION = DIA_EDMUND_YOUSCAREDME_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_EDMUND_YOUSCAREDME_CONDITION() {
    return TRUE;
}

func void DIA_EDMUND_YOUSCAREDME_INFO() {
    SHEEP_ENIU.FLAGS = 0;
    BAU_13761_EDMUND.FLAGS = 0;
    AI_OUTPUT(SELF, OTHER, "DIA_Edmund_YouScaredMe_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Edmund_YouScaredMe_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Edmund_YouScaredMe_03_03");
    INFO_CLEARCHOICES(85677);
    INFO_ADDCHOICE(85677, "Fine, sit there.", 85680);
    INFO_ADDCHOICE(85677, "You better go home.", 85681);
}

func void DIA_EDMUND_FORGETIT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Edmund_ForgetIt_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Edmund_ForgetIt_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Edmund_ForgetIt_03_03");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_EDMUND_BETTERGO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Edmund_BetterGo_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Edmund_BetterGo_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Edmund_BetterGo_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Edmund_BetterGo_15_04");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_EDMUND_AFTERFIRSTTALK(C_INFO) {
    NPC = 57761;
    NR = 4;
    CONDITION = DIA_EDMUND_AFTERFIRSTTALK_CONDITION;
    INFORMATION = DIA_EDMUND_AFTERFIRSTTALK_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_EDMUND_AFTERFIRSTTALK_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 85677)) && (NPC_ISINSTATE(SELF, 61599))) && (!(NPC_ISDEAD(SHEEP_ENIU)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_EDMUND_AFTERFIRSTTALK_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Edmund_AfterFirstTalk_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_EDMUND_SHEEPISDEAD(C_INFO) {
    NPC = 57761;
    NR = 5;
    CONDITION = DIA_EDMUND_SHEEPISDEAD_CONDITION;
    INFORMATION = DIA_EDMUND_SHEEPISDEAD_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_EDMUND_SHEEPISDEAD_CONDITION() {
    if (NPC_ISDEAD(SHEEP_ENIU)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_EDMUND_SHEEPISDEAD_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Edmund_SheepIsDead_03_01");
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

