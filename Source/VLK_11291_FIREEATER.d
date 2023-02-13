instance VLK_11291_FIREEATER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_FIREEATER;
    GUILD = GIL_VLK;
    ID = 11291;
    VOICE = 63;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_11291_FIREEATER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_11291_FIREEATER, MALE, HUMHEADFIGHTER, FACE_N_FIREEATER, 1, 35572);
    MDL_APPLYOVERLAYMDS(VLK_11291_FIREEATER, HUMANSMILITIAMDS);
    B_CREATEAMBIENTINV(VLK_11291_FIREEATER);
    B_GIVENPCTALENTS(VLK_11291_FIREEATER);
    B_SETFIGHTSKILLS(VLK_11291_FIREEATER, 40);
    DAILY_ROUTINE = RTN_START_11291;
}

func void RTN_START_11291() {
    TA_STAND_WP(8, 0, 9, 0, RNG_NS11_WAYPOINT);
    TA_STAND_WP(9, 0, 8, 0, RNG_NS11_WAYPOINT);
}

func void RTN_TOT_11291() {
    TA_G1_FIRESPIT(8, 0, 9, 0, TOT2);
    TA_G1_FIRESPIT(9, 0, 8, 0, TOT2);
}
