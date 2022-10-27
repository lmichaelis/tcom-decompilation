instance PIR_1313_GETTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_GETTER;
    GUILD = GIL_PIR;
    ID = 0x521;
    VOICE = 51;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(PIR_1313_GETTER, 35);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETNPCVISUAL(PIR_1313_GETTER, MALE, HUMHEADPONY, FACE_L_GETTER, 2, 0x8a46);
    MDL_APPLYOVERLAYMDS(PIR_1313_GETTER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(PIR_1313_GETTER);
    B_GIVENPCTALENTS(PIR_1313_GETTER);
    B_SETFIGHTSKILLS(PIR_1313_GETTER, 60);
    DAILY_ROUTINE = RTN_START_1313;
}

func void RTN_START_1313() {
    TA_STAND_ARMSCROSSED(4, 0, 13, 0, "P17_HAVEN_IN_41");
    TA_STAND_EATING(13, 0, 15, 0, "P17_HAVEN_IN_41");
    TA_STAND_DRINKING(15, 0, 17, 0, "P17_HAVEN_IN_41");
    TA_SMOKE_JOINT(17, 0, 20, 0, "P17_HAVEN_IN_41");
    TA_STAND_ARMSCROSSED(20, 0, 4, 0, "P17_HAVEN_BAR_IN_18");
}

func void RTN_TAVERN_1313() {
    TA_SIT_CHAIR_DRINK(1, 0, 6, 0, "PART17_BAR_CHAIR_05");
    TA_SIT_CHAIR_DRINK(6, 0, 1, 0, "PART17_BAR_CHAIR_05");
}

func void RTN_TOURNAMENT_1313() {
    TA_ARENAFIGHTTOURNAMENT(1, 0, 6, 0, "P17_HAVEN_ARENA_GETTER");
    TA_ARENAFIGHTTOURNAMENT(6, 0, 1, 0, "P17_HAVEN_ARENA_GETTER");
}

func void RTN_TOURNAMENTSTOP_1313() {
    TA_GAWK(1, 0, 6, 0, "P17_HAVEN_ARENA_GETTER");
    TA_GAWK(6, 0, 1, 0, "P17_HAVEN_ARENA_GETTER");
}

func void RTN_SQ406_GUIDE_1313() {
    TA_GUIDE_PLAYER(1, 0, 6, 0, "PART17_PATH_19");
    TA_GUIDE_PLAYER(6, 0, 1, 0, "PART17_PATH_19");
}

func void RTN_SQ406_FLEE_1313() {
    TA_FLEE_NOIQ(1, 0, 6, 0, "PART17_CAVE_CAMPFIRE_01");
    TA_FLEE_NOIQ(6, 0, 1, 0, "PART17_CAVE_CAMPFIRE_01");
}

func void RTN_SQ406_CAVE_1313() {
    TA_SIT_SLAVSQUAT(1, 0, 6, 0, "PART17_CAVE_CAMPFIRE_01");
    TA_SIT_SLAVSQUAT(6, 0, 1, 0, "PART17_CAVE_CAMPFIRE_01");
}

func void RTN_SQ503_FINALFIGHT_1313() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, "P17_HAVEN_ARENA_SQ503_HERO");
    TA_STAYSTRAIGHT(6, 0, 1, 0, "P17_HAVEN_ARENA_SQ503_HERO");
}

func void RTN_TOT_1313() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, TOT);
    TA_STAYSTRAIGHT(6, 0, 1, 0, TOT);
}

