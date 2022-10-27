instance NONE_13625_RENEGADE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_NONE;
    ID = 0x3539;
    VOICE = 13;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_13625_RENEGADE, 33);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13625_RENEGADE, MALE, HUMHEADTHIEF, FACE_N_RENEGADE12, 1, 0x8aa0);
    MDL_APPLYOVERLAYMDS(NONE_13625_RENEGADE, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13625_RENEGADE);
    B_GIVENPCTALENTS(NONE_13625_RENEGADE);
    B_SETFIGHTSKILLS(NONE_13625_RENEGADE, 40);
    DAILY_ROUTINE = RTN_START_13625;
    AIVAR[75] = WALKMODE_WALK;
    AIVAR[74] = NPC_IAMSALVISPY;
}

func void RTN_START_13625() {
    TA_FOLLOW_PLAYER(8, 0, 13, 0, RNG_TRAP47A50_WAYPOINT);
    TA_FOLLOW_PLAYER(13, 0, 8, 0, RNG_TRAP47A50_WAYPOINT);
}

func void RTN_TOT_13625() {
    TA_STAND_WP(8, 0, 13, 0, TOT2);
    TA_STAND_WP(13, 0, 8, 0, TOT2);
}
