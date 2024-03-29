instance NONE_13594_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SUSPICIOUSREFUGEE;
    GUILD = GIL_NONE;
    ID = 13594;
    VOICE = 22;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13594_REFUGEE, 24);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13594_REFUGEE, MALE, HUMHEADBALD, FACE_N_REFUGEE49, BODYTEX_N_HOMELESS03, 35591);
    MDL_APPLYOVERLAYMDS(NONE_13594_REFUGEE, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13594_REFUGEE);
    B_GIVENPCTALENTS(NONE_13594_REFUGEE);
    B_SETFIGHTSKILLS(NONE_13594_REFUGEE, 30);
    DAILY_ROUTINE = RTN_START_13594;
}

func void RTN_START_13594() {
    TA_SIT_SLAVSQUAT(6, 0, 8, 0, "HARBOUR_WALLS_QM304_REFUGEE_02");
    TA_SIT_SLAVSQUAT(8, 0, 6, 0, "HARBOUR_WALLS_QM304_REFUGEE_02");
}

func void RTN_TOT_13594() {
    TA_FLEE_NOIQ(6, 0, 8, 0, TOT);
    TA_FLEE_NOIQ(8, 0, 6, 0, TOT);
}

