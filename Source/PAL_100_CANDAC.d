instance PAL_100_CANDAC(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_CANDAC;
    GUILD = GIL_PAL;
    ID = 100;
    VOICE = 29;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(PAL_100_CANDAC, 60);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    EQUIPITEM(PAL_100_CANDAC, 34027);
    B_SETNPCVISUAL(PAL_100_CANDAC, MALE, HUMHEADFIGHTER, FACE_N_CANDAC, 1, 35621);
    MDL_APPLYOVERLAYMDS(PAL_100_CANDAC, HUMANSMILITIAMDS);
    MDL_APPLYOVERLAYMDS(PAL_100_CANDAC, "HumanS_PalaPray2.mds");
    B_CREATEAMBIENTINV(PAL_100_CANDAC);
    B_GIVENPCTALENTS(PAL_100_CANDAC);
    B_SETFIGHTSKILLS(PAL_100_CANDAC, 75);
    DAILY_ROUTINE = RTN_START_100;
}

func void RTN_START_100() {
    TA_STAND_ARMSCROSSED(8, 0, 12, 0, "PARTM8_PATH_21");
    TA_STAND_ARMSCROSSED(12, 0, 8, 0, "PARTM8_PATH_21");
}

func void RTN_NORMALDAY_100() {
    TA_SIT_CHAIR_MILITIA(7, 0, 9, 0, "PARTM1_FIREMAGES_CHAIR_02");
    TA_SMALLTALK(9, 0, 12, 0, "PARTM1_FIREMAGES_SMALLTALK_02");
    TA_PRAY_PALADIN(12, 0, 14, 2, "PARTM8_PATH_PRAY");
    TA_SIT_THRONE_READING(14, 2, 15, 0, "PART1_FIREMAGES_SOFA_01");
    TA_LEAN(15, 0, 16, 30, "PARTM1_LEAN_03");
    TA_SMALLTALK(16, 30, 20, 0, "PARTM1_FIREMAGES_SMALLTALK_02");
    TA_SIT_THRONE(20, 0, 22, 0, "PART1_FIREMAGES_SOFA_01");
    TA_SLEEP(22, 0, 7, 0, "PARTM1_FIREMAGES_BED_01");
}

func void RTN_INNOSSECONDMARKET_100() {
    TA_STAND_ARMSCROSSED(8, 0, 12, 0, "PARTM8_PATH_60");
    TA_STAND_ARMSCROSSED(12, 0, 8, 0, "PARTM8_PATH_60");
}

func void RTN_SQ309_100() {
    TA_SMALLTALK(8, 0, 12, 0, "PARTM8_SMALLTALK_02");
    TA_SMALLTALK(12, 0, 8, 0, "PARTM8_SMALLTALK_02");
}

func void RTN_SQ508_DRINK_100() {
    TA_STAND_DRINKING(8, 0, 12, 0, "PART8_MONASTERY_CANDAC_DRINK");
    TA_STAND_DRINKING(12, 0, 8, 0, "PART8_MONASTERY_CANDAC_DRINK");
}

func void RTN_SQ508_PRAY_100() {
    TA_SIT_BENCH(8, 0, 12, 0, "PART8_MONASTERY_BENCH_01");
    TA_SIT_BENCH(12, 0, 8, 0, "PART8_MONASTERY_BENCH_01");
}

func void RTN_SQ508_WAIT_100() {
    TA_SIT_BENCH(4, 0, 18, 0, "PART8_MONASTERY_BENCH_01");
    TA_STAND_ARMSCROSSED(18, 0, 4, 0, "PART8_SQ508_CANDAC_WAIT");
}

func void RTN_SQ508_GUIDE_100() {
    TA_GUIDE_PLAYER(4, 0, 18, 0, "PART8_GRAVEYARD_14");
    TA_GUIDE_PLAYER(18, 0, 4, 0, "PART8_GRAVEYARD_14");
}

func void RTN_SQ508_WAIT_INNOS_100() {
    TA_STAYSTRAIGHT(4, 0, 18, 0, "PART8_GRAVEYARD_14");
    TA_STAYSTRAIGHT(18, 0, 4, 0, "PART8_GRAVEYARD_14");
}

func void RTN_SQ508_AFTERQUEST_V1_100() {
    TA_PRAY_INNOS(12, 0, 16, 0, "PART8_GRAVEYARD_INNOS_02");
    TA_PRAY_INNOS(16, 0, 12, 0, "PART8_GRAVEYARD_INNOS_02");
}

func void RTN_SQ508_AFTERQUEST_V2_100() {
    TA_PRAY_PALADIN(12, 0, 16, 0, "PART8_CHURCH_PRAY_01");
    TA_PRAY_PALADIN(16, 0, 12, 0, "PART8_CHURCH_PRAY_01");
}

func void RTN_TOT_100() {
    TA_STAND_ARMSCROSSED(8, 0, 12, 0, TOT);
    TA_STAND_ARMSCROSSED(12, 0, 8, 0, TOT);
}

func void RTN_Q509_GUIDE_V1_100() {
    TA_GUIDE_PLAYER(4, 0, 18, 0, "PART8_GRAVEYARD_12");
    TA_GUIDE_PLAYER(18, 0, 4, 0, "PART8_GRAVEYARD_12");
}

func void RTN_Q509_GUIDE_V2_100() {
    TA_GUIDE_PLAYER(4, 0, 18, 0, "PART8_MONASTERY_74");
    TA_GUIDE_PLAYER(18, 0, 4, 0, "PART8_MONASTERY_74");
}

func void RTN_Q509_WAIT_100() {
    TA_LEAN(4, 0, 18, 0, "PART5_Q509_CANDAC");
    TA_LEAN(18, 0, 4, 0, "PART5_Q509_CANDAC");
}

