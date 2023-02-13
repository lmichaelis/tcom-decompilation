instance MIL_6385_SAMBOR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_SAMBOR;
    GUILD = GIL_MIL;
    ID = 6385;
    VOICE = 66;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_6385_SAMBOR, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_6385_SAMBOR, MALE, HUMHEADWITHOUTPONY, FACE_N_SAMBOR, 1, 35493);
    MDL_APPLYOVERLAYMDS(MIL_6385_SAMBOR, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_6385_SAMBOR);
    B_GIVENPCTALENTS(MIL_6385_SAMBOR);
    B_SETFIGHTSKILLS(MIL_6385_SAMBOR, 50);
    DAILY_ROUTINE = RTN_START_6385;
}

func void RTN_START_6385() {
    TA_BOWMAKING(7, 20, 23, 0, "PARTM3_CHAIR_01");
    TA_SLEEP(23, 0, 7, 20, "PARTM3_BARRACK_HOUSE1_BED_03");
}

func void RTN_JOININGMILITIA_6385() {
    TA_MILJOIN(8, 0, 16, 0, "PARTM3_JOININGMILITIA_WATCH_08");
    TA_MILJOIN(16, 0, 8, 0, "PARTM3_JOININGMILITIA_WATCH_08");
}

func void RTN_JOININGMILITIA_TAVERN_6385() {
    TA_SIT_CHAIR_DRINK(8, 0, 16, 0, "PARTM4_TAVERN_CHAIR_04");
    TA_SIT_CHAIR_DRINK(16, 0, 8, 0, "PARTM4_TAVERN_CHAIR_04");
}

func void RTN_ATTEMPT_6385() {
    TA_GUARD_PASSAGE(8, 0, 18, 0, "PARTM4_PATH_46");
    TA_GUARD_PASSAGE(18, 0, 8, 0, "PARTM4_PATH_46");
}

func void RTN_Q308_OUTSIDE_6385() {
    TA_OBSERVE(8, 0, 18, 0, "PARTM4_ATTEMPT_CUTSCENE_HERO");
    TA_OBSERVE(18, 0, 8, 0, "PARTM4_ATTEMPT_CUTSCENE_HERO");
}

func void RTN_LORENZOISGONE_6385() {
    TA_LORENZOISGONE(8, 0, 22, 0, "XXX");
    TA_LORENZOISGONE(22, 0, 8, 0, "XXX");
}

func void RTN_QM301_CROSSBOWTEST_6385() {
    TA_OBSERVE(8, 0, 18, 0, "PARTM3_CROSSBOWTEST_02");
    TA_OBSERVE(18, 0, 8, 0, "PARTM3_CROSSBOWTEST_02");
}

