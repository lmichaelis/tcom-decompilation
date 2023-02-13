instance PIR_13050_OTIS_ARENA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_OTIS;
    GUILD = GIL_PIR;
    ID = 13050;
    VOICE = 8;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(PIR_13050_OTIS_ARENA, 32);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETNPCVISUAL(PIR_13050_OTIS_ARENA, MALE, HUMHEADFATBALD, FACE_N_OTIS, 1, 35422);
    MDL_APPLYOVERLAYMDS(PIR_13050_OTIS_ARENA, HUMANSTIREDMDS);
    MDL_APPLYOVERLAYMDS(PIR_13050_OTIS_ARENA, HUMANS1HST2);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(PIR_13050_OTIS_ARENA);
    B_SETFIGHTSKILLS(PIR_13050_OTIS_ARENA, 19);
    DAILY_ROUTINE = RTN_START_13050;
}

func void RTN_ARENAWAIT_13050() {
    TA_STAYSTRAIGHT_NOIQ(1, 0, 6, 0, "P17_HAVEN_ARENA_OPPONENT_02");
    TA_STAYSTRAIGHT_NOIQ(6, 0, 1, 0, "P17_HAVEN_ARENA_OPPONENT_02");
}

func void RTN_ARENAFIGHTPLAYER_13050() {
    TA_RUNTOWP(1, 0, 6, 0, "P17_HAVEN_ARENA_OPPONENT_02");
    TA_RUNTOWP(6, 0, 1, 0, "P17_HAVEN_ARENA_OPPONENT_02");
}

func void RTN_TOURNAMENTBET_13050() {
    TA_SIT_BENCH_Q306(7, 0, 22, 0, "P17_HAVEN_ARENA_INSIDE_05");
    TA_SIT_BENCH_Q306(22, 0, 7, 0, "P17_HAVEN_ARENA_INSIDE_05");
}

func void RTN_START_13050() {
    TA_STAYSTRAIGHT_NOIQ(12, 0, 7, 0, TOT);
    TA_STAYSTRAIGHT_NOIQ(7, 0, 12, 0, TOT);
}

func void RTN_TOT_13050() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, TOT);
    TA_STAYSTRAIGHT(6, 0, 1, 0, TOT);
}
