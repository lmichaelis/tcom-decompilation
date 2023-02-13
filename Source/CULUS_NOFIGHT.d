var int CULUS_NOFIGHT;
func void CULUS_HEALHIM() {
    if ((NONE_11179_CULUS.ATTRIBUTE[0]) != (NONE_11179_CULUS.ATTRIBUTE[1])) {
        NONE_11179_CULUS.ATTRIBUTE[0] = NONE_11179_CULUS.ATTRIBUTE[1];
    };
}

instance DIA_CULUS_EXIT(C_INFO) {
    NPC = 55052;
    NR = 999;
    CONDITION = DIA_CULUS_EXIT_CONDITION;
    INFORMATION = DIA_CULUS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_CULUS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_CULUS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CULUS_CULUSTHEASSHOLE(C_INFO) {
    NPC = 55052;
    NR = 2;
    CONDITION = DIA_CULUS_CULUSTHEASSHOLE_CONDITION;
    INFORMATION = DIA_CULUS_CULUSTHEASSHOLE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_CULUS_CULUSTHEASSHOLE_CONDITION() {
    return TRUE;
}

func void DIA_CULUS_CULUSTHEASSHOLE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Culus_CulusTheAsshole_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Culus_CulusTheAsshole_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Culus_CulusTheAsshole_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Culus_CulusTheAsshole_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Culus_CulusTheAsshole_03_05");
    INFO_CLEARCHOICES(68005);
    INFO_ADDCHOICE(68005, "I won't fight.", 68008);
    INFO_ADDCHOICE(68005, "Show me what you're made of!", 68009);
}

func void DIA_CULUS_CULUSTHEASSHOLE_NOFIGHT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Culus_CulusTheAsshole_NoFight_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Culus_CulusTheAsshole_NoFight_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Culus_CulusTheAsshole_NoFight_03_03");
    NONE_11179_CULUS.FLAGS = 2;
    CULUS_NOFIGHT = 1;
    NPC_EXCHANGEROUTINE(SELF, TOT);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_CULUS_CULUSTHEASSHOLE_FIGHT() {
    CULUS_HEALHIM();
    AI_OUTPUT(OTHER, SELF, "DIA_Culus_Fight_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Culus_Fight_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Culus_Fight_03_03");
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_NONE, 1);
}

instance DIA_CULUS_COWARD(C_INFO) {
    NPC = 55052;
    NR = 5;
    CONDITION = DIA_CULUS_COWARD_CONDITION;
    INFORMATION = DIA_CULUS_COWARD_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_CULUS_COWARD_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 61599)) && ((CULUS_NOFIGHT) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CULUS_COWARD_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Culus_Coward_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CULUS_AFTERCULUSFIGH1(C_INFO) {
    NPC = 55052;
    NR = 7;
    CONDITION = DIA_CULUS_AFTERCULUSFIGH1_CONDITION;
    INFORMATION = DIA_CULUS_AFTERCULUSFIGH1_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_CULUS_AFTERCULUSFIGH1_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 68005)) && ((CULUS_NOFIGHT) == (0))) {
        if ((CULUS_DEBUGG) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_CULUS_AFTERCULUSFIGH1_INFO() {
    CULUS_HEALHIM();
    if ((SELF.AIVAR[0]) == (FIGHT_LOST)) {
        DAYOFCULUSFIGHT01 = WLD_GETDAY();
        CULUS_LEVEL = 1;
        AI_OUTPUT(SELF, OTHER, "DIA_Culus_AfterCulusFigh1_03_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Culus_AfterCulusFigh1_03_02");
        AI_OUTPUT(OTHER, SELF, "DIA_Culus_AfterCulusFigh1_15_03");
        AI_OUTPUT(OTHER, SELF, "DIA_Culus_AfterCulusFigh1_15_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Culus_AfterCulusFigh1_03_05");
        NONE_11179_CULUS.FLAGS = 2;
        NPC_EXCHANGEROUTINE(SELF, TOT);
        CULUS_DEBUGG = 1;
        AI_STOPPROCESSINFOS(SELF);
    };
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Culus_AfterCulusFigh1_03_06");
        AI_OUTPUT(SELF, OTHER, "DIA_Culus_AfterCulusFigh1_03_07");
        CULUS_DEBUGG = 1;
        NONE_11179_CULUS.FLAGS = 2;
        NPC_EXCHANGEROUTINE(SELF, TOT);
        AI_STOPPROCESSINFOS(SELF);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Culus_AfterCulusFigh1_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Culus_AfterCulusFigh1_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Culus_AfterCulusFigh1_03_10");
    CREATEINVITEMS(SELF, 39584, 1);
    AI_EQUIPBESTMELEEWEAPON(SELF);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_NONE, 1);
}

instance DIA_CULUS_AMBIENTTALK(C_INFO) {
    NPC = 55052;
    NR = 8;
    CONDITION = DIA_CULUS_AMBIENTTALK_CONDITION;
    INFORMATION = DIA_CULUS_AMBIENTTALK_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_CULUS_AMBIENTTALK_CONDITION() {
    if (NPC_ISINSTATE(SELF, 61599)) {
        if ((CULUS_DEBUGG) == (1)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_CULUS_AMBIENTTALK_INFO() {
    if ((SELF.AIVAR[0]) == (FIGHT_LOST)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Culus_AmbientTalk_03_01");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Culus_AmbientTalk_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Culus_AmbientTalk_03_03");
    AI_STOPPROCESSINFOS(SELF);
}

