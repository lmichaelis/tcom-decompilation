instance NONE_6350_SVEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_SVEN;
    GUILD = GIL_OUT;
    ID = 6350;
    VOICE = 62;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6350_SVEN, 11);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_6350_SVEN, MALE, HUMHEADBALD, FACE_P_SVEN, 0, 35394);
    MDL_APPLYOVERLAYMDS(NONE_6350_SVEN, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6350_SVEN);
    B_GIVENPCTALENTS(NONE_6350_SVEN);
    B_SETFIGHTSKILLS(NONE_6350_SVEN, 40);
    DAILY_ROUTINE = RTN_START_6350;
}

func void RTN_START_6350() {
    TA_SIT_BENCH_DRINK(8, 0, 9, 30, "PART4_FISHERMAN_BENCH_03");
    TA_STAND_GUARDING(9, 30, 14, 0, "PART4_FISHERMAN_16");
    TA_PLUNDER(14, 0, 17, 0, "PART4_FISHERMAN_74");
    TA_SIT_BENCH(17, 0, 20, 0, "PART4_FISHERMAN_BENCH_03");
    TA_SLEEP(20, 0, 8, 0, "PART4_FISHERMAN_20");
}

func void RTN_SQ123_SMALLTALK_6350() {
    TA_SMALLTALK(7, 30, 10, 0, "PART4_FISHERMAN_MIL_SMALLTALK_04");
    TA_SMALLTALK(10, 0, 7, 30, "PART4_FISHERMAN_MIL_SMALLTALK_04");
}

func void RTN_SQ123_WATCHCONTEST_6350() {
    TA_STAYSTRAIGHT(7, 30, 10, 0, "PART4_FISHERMAN_20");
    TA_STAYSTRAIGHT(10, 0, 7, 30, "PART4_FISHERMAN_20");
}

func void RTN_TOT_6350() {
    TA_STAYSTRAIGHT(7, 30, 10, 0, TOT);
    TA_STAYSTRAIGHT(10, 0, 7, 30, TOT);
}

func void RTN_SQ123_SVENWON_6350() {
    TA_STAYSTRAIGHT(8, 0, 15, 0, "PART4_FISHERMAN_SQ123_DEAD_SVEN");
    TA_STAYSTRAIGHT(15, 0, 8, 0, "PART4_FISHERMAN_SQ123_DEAD_SVEN");
}

func void RTN_SQ123_HAROLDWON_6350() {
    TA_BREATH(8, 0, 15, 0, "PART4_FISHERMAN_SQ123_DEAD_SVEN");
    TA_BREATH(15, 0, 8, 0, "PART4_FISHERMAN_SQ123_DEAD_SVEN");
}

func void RTN_SQ123_GUIDE_6350() {
    TA_GUIDE_PLAYER(8, 0, 15, 0, "PART4_FISHERMAN_PLUNDER_01");
    TA_GUIDE_PLAYER(15, 0, 8, 0, "PART4_FISHERMAN_PLUNDER_01");
}
