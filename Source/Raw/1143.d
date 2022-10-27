instance VLK_11280_BEGGAR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BEGGAR;
    GUILD = GIL_VLK;
    ID = 0x2c10;
    VOICE = 12;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_11280_BEGGAR, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_11280_BEGGAR, MALE, HUMHEADWITHOUTPONY, FACE_N_HOBO40, BODYTEX_N_HOMELESS02, -(1));
    MDL_APPLYOVERLAYMDS(VLK_11280_BEGGAR, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11280_BEGGAR);
    B_GIVENPCTALENTS(VLK_11280_BEGGAR);
    B_SETFIGHTSKILLS(VLK_11280_BEGGAR, 40);
    DAILY_ROUTINE = RTN_START_11280;
}

func void RTN_START_11280() {
    TA_OBSERVE(6, 0, 8, 0, RNG_TRAPDA2_WAYPOINT);
    TA_OBSERVE(8, 0, 6, 0, RNG_TRAPDA2_WAYPOINT);
}

func void RTN_TOT_11280() {
    TA_STAND_WP(6, 0, 8, 0, TOT2);
    TA_STAND_WP(8, 0, 6, 0, TOT2);
}

func void RTN_FLEE_11280() {
    TA_FLEE_NOIQ(6, 0, 8, 0, TOT);
    TA_FLEE_NOIQ(8, 0, 6, 0, TOT);
}

