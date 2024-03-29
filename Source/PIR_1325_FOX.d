instance PIR_1325_FOX(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_FOX;
    GUILD = GIL_PIR;
    ID = 1325;
    VOICE = 12;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(PIR_1325_FOX, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(PIR_1325_FOX, MALE, HUMHEADBALD, FACE_N_FOX, 1, 35571);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(PIR_1325_FOX);
    MDL_APPLYOVERLAYMDS(PIR_1325_FOX, HUMANSTIREDMDS);
    B_GIVENPCTALENTS(PIR_1325_FOX);
    B_SETFIGHTSKILLS(PIR_1325_FOX, 50);
    DAILY_ROUTINE = RTN_START_1325;
}

func void RTN_START_1325() {
    TA_STAND_DRINKING(10, 0, 11, 0, "PART17_BAR_STAND_02");
    TA_STAND_DRINKING(11, 0, 10, 0, "PART17_BAR_STAND_02");
}

func void RTN_TAVERN_1325() {
    TA_STAND_DRINKING(1, 0, 6, 0, "PART17_BAR_STAND_02");
    TA_STAND_DRINKING(6, 0, 1, 0, "PART17_BAR_STAND_02");
}

func void RTN_TOURNAMENT_1325() {
    TA_ARENAFIGHTTOURNAMENT(1, 0, 6, 0, "P17_HAVEN_ARENA_FOX");
    TA_ARENAFIGHTTOURNAMENT(6, 0, 1, 0, "P17_HAVEN_ARENA_FOX");
}

func void RTN_TOURNAMENTSTOP_1325() {
    TA_GAWK(1, 0, 6, 0, "P17_HAVEN_ARENA_FOX");
    TA_GAWK(6, 0, 1, 0, "P17_HAVEN_ARENA_FOX");
}

func void RTN_SQ503_FINALFIGHT_1325() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, "P17_HAVEN_SQ503_FIGHT_02");
    TA_STAYSTRAIGHT(6, 0, 1, 0, "P17_HAVEN_SQ503_FIGHT_02");
}

func void RTN_TOT_1325() {
    TA_FLEE_NOIQ(1, 0, 6, 0, TOT);
    TA_FLEE_NOIQ(6, 0, 1, 0, TOT);
}

