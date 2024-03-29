instance VLK_11285_CITIZEN_RPS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_CITIZEN_RPS;
    GUILD = GIL_VLK;
    ID = 11285;
    VOICE = 49;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_11285_CITIZEN_RPS, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_11285_CITIZEN_RPS, MALE, HUMHEADTHIEF, FACE_N_CITIZEN101, 1, 35542);
    MDL_APPLYOVERLAYMDS(VLK_11285_CITIZEN_RPS, HUMANSSPRINTMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11285_CITIZEN_RPS);
    B_GIVENPCTALENTS(VLK_11285_CITIZEN_RPS);
    B_SETFIGHTSKILLS(VLK_11285_CITIZEN_RPS, 30);
    DAILY_ROUTINE = RTN_START_11285;
}

func void RTN_START_11285() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, RNG_NS25_WAYPOINT);
    TA_FOLLOW_PLAYER(22, 0, 8, 0, RNG_NS25_WAYPOINT);
}

func void RTN_TOT_11285() {
    TA_RUNTOWP_Q602(8, 0, 22, 0, TOT);
    TA_RUNTOWP_Q602(22, 0, 8, 0, TOT);
}

