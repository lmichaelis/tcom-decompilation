instance PIR_1304_IVAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_IVAN;
    GUILD = GIL_PIR;
    ID = 1304;
    VOICE = 61;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(PIR_1304_IVAN, 34);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(PIR_1304_IVAN, 39726);
    EQUIPITEM(PIR_1304_IVAN, 39549);
    B_SETNPCVISUAL(PIR_1304_IVAN, MALE, HUMHEADFATBALD, FACE_N_IVAN, 1, 35422);
    MDL_APPLYOVERLAYMDS(PIR_1304_IVAN, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(PIR_1304_IVAN);
    B_SETFIGHTSKILLS(PIR_1304_IVAN, 60);
    DAILY_ROUTINE = RTN_START_1304;
}

func void RTN_START_1304() {
    TA_SLEEP(1, 0, 7, 0, "P17_HAVEN_HUT7_02");
    TA_SMOKE_JOINT(7, 0, 13, 0, "P17_HAVEN_IN_34");
    TA_SIT_BENCH(13, 0, 17, 0, "P17_HAVEN_IN_35");
    TA_SMOKE_JOINT(17, 0, 1, 0, "P17_HAVEN_IN_34");
}

func void RTN_TAVERN_1304() {
    TA_SMOKE_JOINT(1, 0, 6, 0, "P17_HAVEN_BAR_IN_17");
    TA_SMOKE_JOINT(6, 0, 1, 0, "P17_HAVEN_BAR_IN_17");
}

func void RTN_TOURNAMENT_1304() {
    TA_ARENAFIGHTTOURNAMENT(1, 0, 6, 0, "P17_HAVEN_ARENA_IVAN");
    TA_ARENAFIGHTTOURNAMENT(6, 0, 1, 0, "P17_HAVEN_ARENA_IVAN");
}

func void RTN_TOURNAMENTSTOP_1304() {
    TA_GAWK(1, 0, 6, 0, "P17_HAVEN_ARENA_IVAN");
    TA_GAWK(6, 0, 1, 0, "P17_HAVEN_ARENA_IVAN");
}

func void RTN_SQ503_FINALFIGHT_1304() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, "P17_HAVEN_ARENA_SQ503_HERO");
    TA_STAYSTRAIGHT(6, 0, 1, 0, "P17_HAVEN_ARENA_SQ503_HERO");
}

func void RTN_TOT_1304() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, TOT);
    TA_STAYSTRAIGHT(6, 0, 1, 0, TOT);
}

