instance NONE_13626_RENEGADE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_NONE;
    ID = 13626;
    VOICE = 72;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_13626_RENEGADE, 33);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13626_RENEGADE, MALE, HUMHEADFIGHTER, FACE_B_RENEGADE13, 3, 35488);
    MDL_APPLYOVERLAYMDS(NONE_13626_RENEGADE, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13626_RENEGADE);
    B_GIVENPCTALENTS(NONE_13626_RENEGADE);
    B_SETFIGHTSKILLS(NONE_13626_RENEGADE, 40);
    DAILY_ROUTINE = RTN_START_13626;
    AIVAR[75] = WALKMODE_WALK;
    AIVAR[74] = NPC_IAMSALVISPY;
}

func void RTN_START_13626() {
    TA_FOLLOW_PLAYER(8, 0, 13, 0, RNG_TRAP48A51_WAYPOINT);
    TA_FOLLOW_PLAYER(13, 0, 8, 0, RNG_TRAP48A51_WAYPOINT);
}

func void RTN_TOT_13626() {
    TA_STAND_WP(8, 0, 13, 0, TOT2);
    TA_STAND_WP(13, 0, 8, 0, TOT2);
}
