instance NONE_13346_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 13346;
    VOICE = 17;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[52] = TRUE;
    AIVAR[95] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETATTRIBUTESTOLEVEL(NONE_13346_REFUGEE, 30);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(NONE_13346_REFUGEE, MALE, HUMHEADFIGHTER, FACE_B_REFUGEE39, 3, 35544);
    MDL_APPLYOVERLAYMDS(NONE_13346_REFUGEE, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13346_REFUGEE);
    B_GIVENPCTALENTS(NONE_13346_REFUGEE);
    B_SETFIGHTSKILLS(NONE_13346_REFUGEE, 70);
    DAILY_ROUTINE = RTN_START_13346;
}

func void RTN_START_13346() {
    TA_STAND_GUARDING(22, 0, 3, 0, "SLUMS_TRAP_05");
    TA_STAND_GUARDING(3, 0, 22, 0, TOT);
}

