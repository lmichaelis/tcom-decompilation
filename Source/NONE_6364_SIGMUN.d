instance NONE_6364_SIGMUN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_SIGMUN;
    GUILD = GIL_NONE;
    ID = 6364;
    VOICE = 60;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6364_SIGMUN, 38);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_6364_SIGMUN, MALE, HUMHEADFIGHTER, FACE_N_SIGMUN, 1, 35403);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6364_SIGMUN);
    MDL_APPLYOVERLAYMDS(NONE_6364_SIGMUN, HUMANSPOCKETWALKMDS);
    B_GIVENPCTALENTS(NONE_6364_SIGMUN);
    B_SETFIGHTSKILLS(NONE_6364_SIGMUN, 45);
    DAILY_ROUTINE = RTN_START_6364;
}

func void RTN_START_6364() {
    TA_SIT_CASUAL(7, 0, 9, 30, "PART16_PATH_110");
    TA_STAND_ARMSCROSSED(9, 30, 11, 0, "PART16_PATH_108");
    TA_STAND_EATING(11, 0, 13, 0, "PART16_PATH_108");
    TA_SIT_BENCH(13, 0, 15, 0, "PART16_PATH_111");
    TA_SMALLTALK(15, 0, 17, 0, "PART16_SMALLTALK_02");
    TA_FIREPLACE(17, 0, 22, 0, "PART16_PATH_111");
    TA_SLEEP(22, 0, 7, 0, "PART16_PATH_110");
}

func void RTN_SCARED_6364() {
    TA_SEARCH_SCARED(22, 0, 7, 30, "PART16_PATH_111");
    TA_SEARCH_SCARED(7, 30, 22, 0, "PART16_PATH_111");
}

func void RTN_SWAMP_6364() {
    TA_PLUNDER(7, 0, 14, 0, "PART11_SWAMP_20");
    TA_SIT_CASUAL(14, 0, 18, 0, "PART11_PATH_177");
    TA_PLUNDER(18, 0, 20, 0, "PART11_SWAMP_30");
    TA_SMALLTALK(20, 0, 22, 0, "PART11_SWAMP_SMALLTALK_01");
    TA_SLEEP(22, 0, 7, 0, "PART11_SWAMPHOUSE_BED_01");
}

func void RTN_TOT2_6364() {
    TA_STAND_ARMSCROSSED(7, 0, 22, 0, TOT2);
    TA_STAND_ARMSCROSSED(22, 0, 7, 0, TOT2);
}

