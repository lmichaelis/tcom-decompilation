instance PIR_1305_OTIS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_OTIS;
    GUILD = GIL_PIR;
    ID = 1305;
    VOICE = 8;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(PIR_1305_OTIS, 32);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETNPCVISUAL(PIR_1305_OTIS, MALE, HUMHEADFATBALD, FACE_N_OTIS, 1, 35422);
    MDL_APPLYOVERLAYMDS(PIR_1305_OTIS, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(PIR_1305_OTIS);
    B_SETFIGHTSKILLS(PIR_1305_OTIS, 60);
    DAILY_ROUTINE = RTN_START_1305;
}

func void RTN_ARENAFIGHTPLAYER_1305() {
    TA_RUNTOWP(1, 0, 6, 0, "P17_HAVEN_ARENA_OPPONENT_02");
    TA_RUNTOWP(6, 0, 1, 0, "P17_HAVEN_ARENA_OPPONENT_02");
}

func void RTN_TOURNAMENTBET_1305() {
    TA_SIT_BENCH(7, 0, 22, 0, "P17_HAVEN_ARENA_INSIDE_05");
    TA_SIT_BENCH(22, 0, 7, 0, "P17_HAVEN_ARENA_INSIDE_05");
}

func void RTN_START_1305() {
    TA_SLEEP(23, 0, 7, 0, "P17_HAVEN_HUT7_04");
    TA_SIT_CHAIR(7, 0, 18, 0, "P17_HAVEN_HUT7_03");
    TA_SIT_CHAIR_EAT(18, 0, 23, 0, "P17_HAVEN_HUT7_03");
}

func void RTN_TAVERN_1305() {
    TA_STAND_DRINKING(1, 0, 6, 0, "P17_HAVEN_BAR_IN_37");
    TA_STAND_DRINKING(6, 0, 1, 0, "P17_HAVEN_BAR_IN_37");
}

func void RTN_SQ503_FINALFIGHT_1305() {
    TA_STAYSTRAIGHT(7, 0, 10, 0, "P17_HAVEN_SQ503_FIGHT_06");
    TA_STAYSTRAIGHT(10, 0, 7, 0, "P17_HAVEN_SQ503_FIGHT_06");
}

func void RTN_TOT_1305() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, TOT);
    TA_STAYSTRAIGHT(6, 0, 1, 0, TOT);
}

