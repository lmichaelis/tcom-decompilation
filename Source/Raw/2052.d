instance NONE_13347_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = RESERVED_CONST_STRING_41;
    GUILD = GIL_NONE;
    ID = 0x3423;
    VOICE = 14;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[52] = TRUE;
    AIVAR[95] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETATTRIBUTESTOLEVEL(NONE_13347_REFUGEE, 30);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(NONE_13347_REFUGEE, MALE, HUMHEADPYMONTENEU, FACE_P_REFUGEE40, 0, 0x8ad9);
    MDL_APPLYOVERLAYMDS(NONE_13347_REFUGEE, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13347_REFUGEE);
    B_GIVENPCTALENTS(NONE_13347_REFUGEE);
    B_SETFIGHTSKILLS(NONE_13347_REFUGEE, 70);
    DAILY_ROUTINE = RTN_START_13347;
    AIVAR[75] = WALKMODE_WALK;
}

func void RTN_START_13347() {
    TA_FOLLOW_PLAYER(22, 0, 5, 0, RNG_TRAP27_WAYPOINT);
    TA_FOLLOW_PLAYER(5, 0, 22, 0, RNG_TRAP27_WAYPOINT);
}

