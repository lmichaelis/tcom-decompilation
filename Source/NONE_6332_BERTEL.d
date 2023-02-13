instance NONE_6332_BERTEL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_COEN;
    GUILD = GIL_NONE;
    ID = 6332;
    VOICE = 66;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6332_BERTEL, 34);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_6332_BERTEL, MALE, HUMHEADWITHOUTPONY, FACE_N_BERTEL, 1, 35571);
    EQUIPITEM(NONE_6332_BERTEL, 39590);
    B_CREATEAMBIENTINV(NONE_6332_BERTEL);
    B_GIVENPCTALENTS(NONE_6332_BERTEL);
    B_SETFIGHTSKILLS(NONE_6332_BERTEL, 40);
    DAILY_ROUTINE = RTN_START_6332;
}

func void RTN_START_6332() {
    TA_CHESTPUSH(1, 0, 6, 0, "PART17_PATH_77");
    TA_CHESTPUSH(6, 0, 1, 0, "PART17_PATH_77");
}

func void RTN_SEARCH_6332() {
    TA_SEARCH_ONLY(1, 0, 6, 0, "PART17_PATH_211");
    TA_SEARCH_ONLY(6, 0, 1, 0, "PART17_PATH_211");
}

func void RTN_CHESTPIRATES_6332() {
    TA_LEAN(1, 0, 6, 0, "PART17_STAND_01");
    TA_LEAN(6, 0, 1, 0, "PART17_STAND_01");
}

func void RTN_PIRATES_CHAPTER3_6332() {
    TA_SIT_CHAIR_DRINK(1, 0, 6, 0, "PART17_BAR_CHAIR_03");
    TA_SIT_CHAIR_DRINK(6, 0, 1, 0, "PART17_BAR_CHAIR_03");
}

func void RTN_HAVEN_6332() {
    TA_PRACTICE_SWORD(1, 0, 6, 0, "P17_HAVEN_ARENA_04");
    TA_PRACTICE_SWORD(6, 0, 1, 0, "P17_HAVEN_ARENA_04");
}

func void RTN_TOURNAMENT_6332() {
    TA_ARENAFIGHTTOURNAMENT(1, 0, 6, 0, "P17_HAVEN_ARENA_BERTEL");
    TA_ARENAFIGHTTOURNAMENT(6, 0, 1, 0, "P17_HAVEN_ARENA_BERTEL");
}

func void RTN_TOURNAMENTSTOP_6332() {
    TA_GAWK(1, 0, 6, 0, "P17_HAVEN_ARENA_BERTEL");
    TA_GAWK(6, 0, 1, 0, "P17_HAVEN_ARENA_BERTEL");
}

func void RTN_TAVERN_6332() {
    TA_STAND_DRINKING(1, 0, 6, 0, "PART17_BAR_10");
    TA_STAND_DRINKING(6, 0, 1, 0, "PART17_BAR_10");
}

func void RTN_CITY_6332() {
    TA_SIT_BENCH_DRINK(1, 0, 6, 0, "PARTM2_PATH_30");
    TA_SIT_BENCH_DRINK(6, 0, 1, 0, "PARTM2_PATH_30");
}

func void RTN_SQ503_FINALFIGHT_6332() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, "P17_HAVEN_SQ503_FIGHT_01");
    TA_STAYSTRAIGHT(6, 0, 1, 0, "P17_HAVEN_SQ503_FIGHT_01");
}

func void RTN_TOT_6332() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, TOT);
    TA_STAYSTRAIGHT(6, 0, 1, 0, TOT);
}

