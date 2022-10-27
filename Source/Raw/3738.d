instance DIA_INEXTREMO_FLEX_SACK_EXIT(C_INFO) {
    NPC = 0xd4c8;
    NR = 999;
    CONDITION = DIA_INEXTREMO_FLEX_SACK_EXIT_CONDITION;
    INFORMATION = DIA_INEXTREMO_FLEX_SACK_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_INEXTREMO_FLEX_SACK_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_INEXTREMO_FLEX_SACK_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_INEXTREMO_FLEX_SACK_KQ404_WATERTORTURE(C_INFO) {
    NPC = 0xd4c8;
    NR = 1;
    CONDITION = DIA_INEXTREMO_FLEX_SACK_KQ404_WATERTORTURE_CONDITION;
    INFORMATION = DIA_INEXTREMO_FLEX_SACK_KQ404_WATERTORTURE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = DIALOG_POUROUTTHEWATER;
}

func int DIA_INEXTREMO_FLEX_SACK_KQ404_WATERTORTURE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_KQ404)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x100cc))) && ((NPC_HASITEMS(OTHER, 0x84be)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_INEXTREMO_FLEX_SACK_KQ404_WATERTORTURE_INFO() {
    AI_SETWALKMODE(OTHER, NPC_WALK);
    AI_GOTONPC(OTHER, SELF);
    B_MARVIN_USEWATERTORTURESTATE_START();
    AI_PLAYANI(OTHER, "T_RANDOM_WATERTORTURE_STARTWATER");
    AI_WAIT(OTHER, 0x40400000);
    AI_PLAYANI(OTHER, "T_RANDOM_WATERTORTURE_STOPWATER");
    B_MARVIN_USEWATERTORTURESTATE_END();
    NPC_REMOVEINVITEMS(OTHER, 0x84be, 1);
    AI_WAITTILLEND(SELF, OTHER);
    B_STANDUP();
    AI_OUTPUT(SELF, OTHER, "DIA_InExtremo_Flex_Sack_KQ404_WaterTorture_03_01");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "KQ404_TORTURE");
}

instance DIA_INEXTREMO_FLEX_SACK_KQ404_ONLYWAY(C_INFO) {
    NPC = 0xd4c8;
    NR = 1;
    CONDITION = DIA_INEXTREMO_FLEX_SACK_KQ404_ONLYWAY_CONDITION;
    INFORMATION = DIA_INEXTREMO_FLEX_SACK_KQ404_ONLYWAY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_INEXTREMO_FLEX_SACK_KQ404_ONLYWAY_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_KQ404)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x100de))) && ((KQ404_FINISHWAY) == (0))) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_INEXTREMO_FLEX_SACK_KQ404_ONLYWAY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_InExtremo_Flex_Sack_KQ404_OnlyWay_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_InExtremo_Flex_Sack_KQ404_OnlyWay_03_02");
    AI_STARTFACEANI(SELF, S_DOUBT, 0, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_InExtremo_Flex_Sack_KQ404_OnlyWay_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_InExtremo_Flex_Sack_KQ404_OnlyWay_03_04");
    AI_STARTFACEANI(SELF, S_SERIOUS, 0, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_InExtremo_Flex_Sack_KQ404_OnlyWay_15_05");
    AI_FUNCTION(SELF, 0xf1a6);
    AI_OUTPUT(SELF, OTHER, "DIA_InExtremo_Flex_Sack_KQ404_OnlyWay_03_06");
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
}
