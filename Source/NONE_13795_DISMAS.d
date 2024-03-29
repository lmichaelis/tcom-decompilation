instance NONE_13795_DISMAS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_DISMAS;
    GUILD = GIL_BAU;
    ID = 13795;
    VOICE = 8;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13795_DISMAS, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13795_DISMAS, MALE, HUMHEADPONY, FACE_N_RETIREDMINER, 30, 35589);
    EQUIPITEM(NONE_13795_DISMAS, 34015);
    MDL_APPLYOVERLAYMDS(NONE_13795_DISMAS, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(NONE_13795_DISMAS);
    B_SETFIGHTSKILLS(NONE_13795_DISMAS, 10);
    DAILY_ROUTINE = RTN_START_13795;
}

func void RTN_START_13795() {
    TA_NEWSBOARD(4, 0, 12, 0, "VILLAGE_NEWSBOARD_02");
    TA_NEWSBOARD(12, 0, 4, 0, "VILLAGE_NEWSBOARD_02");
}

func void RTN_VILLAGE_13795() {
    TA_SIT_BENCH(4, 0, 12, 0, "VILLAGE_BENCH_02");
    TA_SIT_BENCH(12, 0, 4, 0, "VILLAGE_BENCH_02");
}

func void RTN_TOT_13795() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}

func void RTN_Q506_CAMP_13795() {
    TA_HAMMERGROUND(4, 0, 12, 0, "PART5_WORKERSCAMP_DISMAS_01");
    TA_HAMMERGROUND(12, 0, 4, 0, "PART5_WORKERSCAMP_DISMAS_01");
}

