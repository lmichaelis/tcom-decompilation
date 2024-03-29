instance PIR_1309_OSCAR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_OSCAR;
    GUILD = GIL_PIR;
    ID = 1309;
    VOICE = 46;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(PIR_1309_OSCAR, 32);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(PIR_1309_OSCAR, MALE, HUMHEADFATBALD, FACE_B_OSCAR, 3, 33570);
    MDL_APPLYOVERLAYMDS(PIR_1309_OSCAR, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(PIR_1309_OSCAR);
    B_SETFIGHTSKILLS(PIR_1309_OSCAR, 60);
    DAILY_ROUTINE = RTN_FIRSTARRIVE;
}

func void RTN_START_1309() {
    TA_STAND_SWEEPING(6, 30, 8, 30, "P17_HAVEN_BAR_IN_25");
    TA_INN(8, 30, 12, 30, "P17_HAVEN_BAR_IN_35");
    TA_COUNTING(12, 30, 13, 30, "PART17_BAR_COUNT");
    TA_STAND_ARMSCROSSED(13, 30, 15, 0, "P17_HAVEN_BAR_IN_35");
    TA_INN(15, 0, 19, 0, "P17_HAVEN_BAR_IN_35");
    TA_STAND_ARMSCROSSED(19, 0, 6, 30, "P17_HAVEN_BAR_IN_35");
}

func void RTN_FIRSTARRIVE() {
    TA_LEAN(0, 0, 12, 0, "P17_HAVEN_BAR_IN_36");
    TA_LEAN(12, 0, 0, 0, "P17_HAVEN_BAR_IN_36");
}

func void RTN_TAVERN_1309() {
    TA_INN(1, 0, 6, 0, "P17_HAVEN_BAR_IN_35");
    TA_INN(6, 0, 1, 0, "P17_HAVEN_BAR_IN_35");
}

func void RTN_TOURNAMENT_1309() {
    TA_ARENAFIGHTTOURNAMENT(1, 0, 6, 0, "P17_HAVEN_ARENA_OSCAR");
    TA_ARENAFIGHTTOURNAMENT(6, 0, 1, 0, "P17_HAVEN_ARENA_OSCAR");
}

func void RTN_TOURNAMENTSTOP_1309() {
    TA_GAWK(1, 0, 6, 0, "P17_HAVEN_ARENA_OSCAR");
    TA_GAWK(6, 0, 1, 0, "P17_HAVEN_ARENA_OSCAR");
}

func void RTN_SQ503_FINALFIGHT_1309() {
    TA_STAYSTRAIGHT(7, 0, 10, 0, "P17_HAVEN_SQ503_FIGHT_04");
    TA_STAYSTRAIGHT(10, 0, 7, 0, "P17_HAVEN_SQ503_FIGHT_04");
}

func void RTN_TOT_1309() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, TOT);
    TA_STAYSTRAIGHT(6, 0, 1, 0, TOT);
}

