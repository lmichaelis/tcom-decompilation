instance NONE_13631_RENEGADE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_NONE;
    ID = 13631;
    VOICE = 28;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13631_RENEGADE, 25);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13631_RENEGADE, MALE, HUMHEADFIGHTER, FACE_L_RENEGADE15, 2, 35501);
    MDL_APPLYOVERLAYMDS(NONE_13631_RENEGADE, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13631_RENEGADE);
    B_GIVENPCTALENTS(NONE_13631_RENEGADE);
    B_SETFIGHTSKILLS(NONE_13631_RENEGADE, 40);
    DAILY_ROUTINE = RTN_START_13631;
}

func void RTN_START_13631() {
    TA_SMALLTALK(8, 0, 13, 0, "PART9_PATH_RENEGADE_EVENT_02");
    TA_SMALLTALK(13, 0, 8, 0, "PART9_PATH_RENEGADE_EVENT_02");
}

func void RTN_TOT_13631() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}

