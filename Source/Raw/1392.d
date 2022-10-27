instance NONE_11115_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 0x2b6b;
    VOICE = 55;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_11115_REFUGEE, 22);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[52] = TRUE;
    B_SETNPCVISUAL(NONE_11115_REFUGEE, MALE, HUMHEADFIGHTER, FACE_N_REFUGEE06, 1, 0x8ad7);
    MDL_APPLYOVERLAYMDS(NONE_11115_REFUGEE, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_11115_REFUGEE);
    B_GIVENPCTALENTS(NONE_11115_REFUGEE);
    B_SETFIGHTSKILLS(NONE_11115_REFUGEE, 75);
    DAILY_ROUTINE = RTN_START_11115;
}

func void RTN_START_11115() {
    TA_STAND_WP(22, 0, 2, 0, RNG_TRAP07_WAYPOINT);
    TA_STAND_WP(2, 0, 22, 0, TOT2);
}

func void RTN_TOT_11115() {
    TA_STAND_WP(22, 0, 2, 0, TOT2);
    TA_STAND_WP(2, 0, 22, 0, TOT2);
}

