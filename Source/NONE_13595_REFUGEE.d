instance NONE_13595_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SUSPICIOUSREFUGEE;
    GUILD = GIL_NONE;
    ID = 13595;
    VOICE = 60;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13595_REFUGEE, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13595_REFUGEE, MALE, HUMHEADPFEIFFERNEU, FACE_N_REFUGEE50, BODYTEX_N_HOMELESS01, 35587);
    MDL_APPLYOVERLAYMDS(NONE_13595_REFUGEE, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13595_REFUGEE);
    CREATEINVITEMS(NONE_13595_REFUGEE, 34202, 1);
    CREATEINVITEMS(NONE_13595_REFUGEE, 37230, 1);
    B_GIVENPCTALENTS(NONE_13595_REFUGEE);
    B_SETFIGHTSKILLS(NONE_13595_REFUGEE, 30);
    DAILY_ROUTINE = RTN_START_13595;
}

func void RTN_START_13595() {
    TA_STAND_DRINKING(6, 0, 8, 0, "HARBOUR_WALLS_QM304_REFUGEE_03");
    TA_STAND_DRINKING(8, 0, 6, 0, "HARBOUR_WALLS_QM304_REFUGEE_03");
}

func void RTN_TOT_13595() {
    TA_FLEE_NOIQ(6, 0, 8, 0, TOT);
    TA_FLEE_NOIQ(8, 0, 6, 0, TOT);
}

