instance PIR_1327_LAUTENIST(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_LUTENIST;
    GUILD = GIL_PIR;
    ID = 1327;
    VOICE = 29;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(PIR_1327_LAUTENIST, 34);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(PIR_1327_LAUTENIST, MALE, HUMHEADPONY, FACE_N_LAUTENIST, 1, 33570);
    MDL_APPLYOVERLAYMDS(PIR_1327_LAUTENIST, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(PIR_1327_LAUTENIST);
    B_GIVENPCTALENTS(PIR_1327_LAUTENIST);
    B_SETFIGHTSKILLS(PIR_1327_LAUTENIST, 60);
    DAILY_ROUTINE = RTN_START_1327;
}

func void RTN_START_1327() {
    TA_PLAY_LUTE(0, 0, 16, 55, "P17_HAVEN_BAR_DANCE_02");
    TA_PLAY_LUTE(16, 55, 0, 0, "P17_HAVEN_BAR_DANCE_02");
}

func void RTN_TAVERN_1327() {
    TA_PLAY_LUTE_TAVERN01(0, 0, 7, 0, "P17_HAVEN_BAR_DANCE_02");
    TA_PLAY_LUTE_TAVERN01(7, 0, 0, 0, "P17_HAVEN_BAR_DANCE_02");
}

func void RTN_TOURNAMENT_1327() {
    TA_ARENAFIGHTTOURNAMENT(1, 0, 6, 0, "P17_HAVEN_ARENA_LAUTENIST");
    TA_ARENAFIGHTTOURNAMENT(6, 0, 1, 0, "P17_HAVEN_ARENA_LAUTENIST");
}

func void RTN_TOURNAMENTSTOP_1327() {
    TA_GAWK(1, 0, 6, 0, "P17_HAVEN_ARENA_LAUTENIST");
    TA_GAWK(6, 0, 1, 0, "P17_HAVEN_ARENA_LAUTENIST");
}

func void RTN_SQ503_FINALFIGHT_1327() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, "P17_HAVEN_SQ503_FIGHT_04");
    TA_STAYSTRAIGHT(6, 0, 1, 0, "P17_HAVEN_SQ503_FIGHT_04");
}

func void RTN_TOT_1327() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, TOT);
    TA_STAYSTRAIGHT(6, 0, 1, 0, TOT);
}

