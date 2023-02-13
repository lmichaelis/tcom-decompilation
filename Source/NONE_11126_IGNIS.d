instance NONE_11126_IGNIS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_IGNIS;
    GUILD = GIL_NONE;
    ID = 11126;
    VOICE = 13;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_11126_IGNIS, 60);
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(NONE_11126_IGNIS, MALE, HUMHEADPONY, FACE_N_IGNIS, BODYTEX_N, 35479);
    MDL_APPLYOVERLAYMDS(NONE_11126_IGNIS, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_11126_IGNIS);
    B_GIVENPCTALENTS(NONE_11126_IGNIS);
    B_SETFIGHTSKILLS(NONE_11126_IGNIS, 100);
    DAILY_ROUTINE = RTN_START_11126;
}

func void RTN_START_11126() {
    TA_STAND_WP(7, 0, 22, 0, RNG_TRAP08_WAYPOINT);
    TA_STAND_WP(22, 0, 7, 0, RNG_TRAP08_WAYPOINT);
}

func void RTN_TOT_11126() {
    TA_STAND_WP(7, 0, 22, 0, TOT2);
    TA_STAND_WP(22, 0, 7, 0, TOT2);
}

