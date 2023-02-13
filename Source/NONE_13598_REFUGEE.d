instance NONE_13598_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 13598;
    VOICE = 72;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13598_REFUGEE, 24);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13598_REFUGEE, MALE, HUMHEADPSIONIC, FACE_L_REFUGEE51, BODYTEX_L_HOMELESS02, 35588);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13598_REFUGEE);
    B_GIVENPCTALENTS(NONE_13598_REFUGEE);
    B_SETFIGHTSKILLS(NONE_13598_REFUGEE, 30);
    DAILY_ROUTINE = RTN_START_13598;
    AIVAR[70] = NPC_AMB_REFUGEE;
}

func void RTN_START_13598() {
    TA_SMALLTALK(6, 0, 8, 0, "HARBOUR_QM402_REFUGEE_01");
    TA_SMALLTALK(8, 0, 6, 0, "HARBOUR_QM402_REFUGEE_01");
}

func void RTN_QM402_WAIT_13598() {
    TA_WAITING(6, 0, 8, 0, "HARBOUR_QM402_REFUGEE_08");
    TA_WAITING(8, 0, 6, 0, "HARBOUR_QM402_REFUGEE_08");
}

func void RTN_QM402_BEFOREFIGHT_13598() {
    TA_STAYSTRAIGHT(6, 0, 8, 0, "PARTM3_QM402_REFUGEE_01");
    TA_STAYSTRAIGHT(8, 0, 6, 0, "PARTM3_QM402_REFUGEE_01");
}

func void RTN_QM402_FIGHT_13598() {
    TA_RUNTOWP(6, 0, 8, 0, "PARTM3_QM402_SOUTHERNER_04");
    TA_RUNTOWP(8, 0, 6, 0, "PARTM3_QM402_SOUTHERNER_04");
}

func void RTN_TOT_13598() {
    TA_STAYSTRAIGHT_NOIQ(6, 0, 8, 0, TOT);
    TA_STAYSTRAIGHT_NOIQ(8, 0, 6, 0, TOT);
}

