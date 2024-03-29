instance NONE_13601_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 13601;
    VOICE = 64;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13601_REFUGEE, 24);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13601_REFUGEE, MALE, HUMHEADWITHOUTPONY, FACE_B_REFUGEE54, BODYTEX_B_HOMELESS02, 35590);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13601_REFUGEE);
    B_GIVENPCTALENTS(NONE_13601_REFUGEE);
    B_SETFIGHTSKILLS(NONE_13601_REFUGEE, 30);
    DAILY_ROUTINE = RTN_START_13601;
    AIVAR[70] = NPC_AMB_REFUGEE;
}

func void RTN_START_13601() {
    TA_STAND_DRINKING(6, 0, 8, 0, "HARBOUR_QM402_REFUGEE_04");
    TA_STAND_DRINKING(8, 0, 6, 0, "HARBOUR_QM402_REFUGEE_04");
}

func void RTN_QM402_WAIT_13601() {
    TA_STAND_DRINKING(6, 0, 8, 0, "HARBOUR_QM402_REFUGEE_05");
    TA_STAND_DRINKING(8, 0, 6, 0, "HARBOUR_QM402_REFUGEE_05");
}

func void RTN_QM402_BEFOREFIGHT_13601() {
    TA_STAYSTRAIGHT(6, 0, 8, 0, "PARTM3_QM402_REFUGEE_04");
    TA_STAYSTRAIGHT(8, 0, 6, 0, "PARTM3_QM402_REFUGEE_04");
}

func void RTN_QM402_FIGHT_13601() {
    TA_RUNTOWP(6, 0, 8, 0, "PARTM3_QM402_SOUTHERNER_05");
    TA_RUNTOWP(8, 0, 6, 0, "PARTM3_QM402_SOUTHERNER_05");
}

func void RTN_TOT_13601() {
    TA_STAYSTRAIGHT_NOIQ(6, 0, 8, 0, TOT);
    TA_STAYSTRAIGHT_NOIQ(8, 0, 6, 0, TOT);
}

