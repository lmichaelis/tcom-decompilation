instance NONE_1396_INEXTREMO_FLEX(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_INEXTREMO_FLEX;
    NPCTYPE = NPCTYPE_MAIN;
    GUILD = GIL_NONE;
    LEVEL = 4;
    FLAGS = 2;
    VOICE = 28;
    ID = 0x574;
    B_SETATTRIBUTESTOLEVEL(NONE_1396_INEXTREMO_FLEX, 25);
    CREATEINVITEM(NONE_1396_INEXTREMO_FLEX, 0x8d16);
    MDL_SETVISUAL(NONE_1396_INEXTREMO_FLEX, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_1396_INEXTREMO_FLEX, "IE_FLEX_ARMOR", BODYTEX_N_INEXTREMO_DUDELSACK, DEFAULT, "HUM_HEAD_INEXTREMO_FLEX", DEFAULT, DEFAULT, -(1));
    MDL_APPLYOVERLAYMDS(NONE_1396_INEXTREMO_FLEX, HUMANSPOCKETWALKMDS);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    NPC_SETTALENTSKILL(NONE_1396_INEXTREMO_FLEX, NPC_TALENT_1H, 1);
    DAILY_ROUTINE = RTN_START_1396;
}

func void RTN_START_1396() {
    TA_SIT_TURKISH(21, 0, 17, 59, "HARBOUR_INEXTREMO_SIT_01");
    TA_CONCERT(17, 59, 21, 0, "KQ404_CONCERT_FLEX");
}

func void RTN_KQ404_TORTURE_1396() {
    TA_SIT_TURKISH(21, 0, 17, 59, "HARBOUR_INEXTREMO_SIT_01");
    TA_SIT_TURKISH(17, 59, 21, 0, "HARBOUR_INEXTREMO_SIT_01");
}

func void RTN_TOT_1396() {
    TA_SIT_BENCH(21, 0, 17, 59, TOT);
    TA_SIT_BENCH(17, 59, 21, 0, TOT);
}

instance NONE_1396_INEXTREMO_FLEX_SACK(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_INEXTREMO_FLEX;
    NPCTYPE = NPCTYPE_MAIN;
    GUILD = GIL_NONE;
    LEVEL = 4;
    FLAGS = 2;
    VOICE = 28;
    ID = 0x369a;
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
    AIVAR[95] = TRUE;
    AIVAR[94] = TRUE;
    B_SETATTRIBUTESTOLEVEL(NONE_1396_INEXTREMO_FLEX_SACK, 1);
    MDL_SETVISUAL(NONE_1396_INEXTREMO_FLEX_SACK, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_1396_INEXTREMO_FLEX_SACK, "Hum_IE_Flex_INSTRUMENT_SACK", DEFAULT, DEFAULT, HUMHEADNOTHING, DEFAULT, DEFAULT, -(1));
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    NPC_SETTALENTSKILL(NONE_1396_INEXTREMO_FLEX_SACK, NPC_TALENT_1H, 1);
    DAILY_ROUTINE = RTN_START_13978;
}

func void RTN_START_13978() {
    TA_KQ404_GROUNDSLEEP(21, 0, 17, 59, "HARBOUR_DARKSECRETS_FLEX");
    TA_KQ404_GROUNDSLEEP(17, 59, 21, 0, "HARBOUR_DARKSECRETS_FLEX");
}

func void RTN_KQ404_TORTURE_13978() {
    TA_STAYSTRAIGHT_DIALOGUE(21, 0, 17, 59, "HARBOUR_DARKSECRETS_FLEX");
    TA_STAYSTRAIGHT_DIALOGUE(17, 59, 21, 0, "HARBOUR_DARKSECRETS_FLEX");
}

