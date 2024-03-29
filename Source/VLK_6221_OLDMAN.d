instance VLK_6221_OLDMAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_OLDMAN;
    GUILD = GIL_VLK;
    ID = 6221;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6221_OLDMAN, 5);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6221_OLDMAN, MALE, HUMHEADWITHOUTPONY, FACE_N_OLDMAN3, 1, 35550);
    MDL_APPLYOVERLAYMDS(VLK_6221_OLDMAN, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6221_OLDMAN);
    B_GIVENPCTALENTS(VLK_6221_OLDMAN);
    B_SETFIGHTSKILLS(VLK_6221_OLDMAN, 40);
    DAILY_ROUTINE = RTN_START_6221;
}

func void RTN_START_6221() {
    TA_STAND_DRINKING_WATER(8, 0, 16, 0, RNG_NS06_WAYPOINT);
    TA_STAND_DRINKING_WATER(16, 0, 8, 0, TOT2);
}

func void RTN_TOT_6221() {
    TA_STAND_DRINKING_WATER(8, 0, 16, 0, TOT2);
    TA_STAND_DRINKING_WATER(16, 0, 8, 0, TOT2);
}

