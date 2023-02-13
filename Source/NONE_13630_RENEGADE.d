instance NONE_13630_RENEGADE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_NONE;
    ID = 13630;
    VOICE = 23;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13630_RENEGADE, 25);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13630_RENEGADE, MALE, HUMHEADPFEIFFERNEU, FACE_N_RENEGADE14, 1, 35493);
    MDL_APPLYOVERLAYMDS(NONE_13630_RENEGADE, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13630_RENEGADE);
    B_GIVENPCTALENTS(NONE_13630_RENEGADE);
    B_SETFIGHTSKILLS(NONE_13630_RENEGADE, 40);
    DAILY_ROUTINE = RTN_START_13630;
}

func void RTN_START_13630() {
    TA_SMALLTALK(8, 0, 13, 0, RNG_TRAP52_WAYPOINT);
    TA_SMALLTALK(13, 0, 8, 0, RNG_TRAP52_WAYPOINT);
}

func void RTN_TOT_13630() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}
