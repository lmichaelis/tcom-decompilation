instance VLK_13504_FULKO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_FULKO;
    GUILD = GIL_VLK;
    ID = 13504;
    VOICE = 74;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_13504_FULKO, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_13504_FULKO, MALE, HUMHEADUNICORNNEU, FACE_L_FULKO, 2, 33907);
    MDL_APPLYOVERLAYMDS(VLK_13504_FULKO, HUMANSPOCKETWALKMDS);
    B_CREATEAMBIENTINV(VLK_13504_FULKO);
    B_GIVENPCTALENTS(VLK_13504_FULKO);
    B_SETFIGHTSKILLS(VLK_13504_FULKO, 30);
    DAILY_ROUTINE = RTN_START_13504;
}

func void RTN_START_13504() {
    TA_STAYSTRAIGHT(7, 0, 15, 30, "HARBOUR_QA304_FULKO");
    TA_STAYSTRAIGHT(15, 30, 7, 0, "HARBOUR_QA304_FULKO");
}

func void RTN_QA304_TAKECHESTS_13504() {
    TA_PLUNDER(7, 0, 15, 30, "HARBOUR_SHIP_AVENAL_03");
    TA_PLUNDER(15, 30, 7, 0, "HARBOUR_SHIP_AVENAL_03");
}

func void RTN_QA304_SLUMS_13504() {
    TA_QA304_BARREL(7, 0, 15, 30, "SLUMS_QA304_SPOT_01");
    TA_QA304_BARREL(15, 30, 7, 0, "SLUMS_QA304_SPOT_01");
}

func void RTN_QA304_SLUMS_PLUNDER_13504() {
    TA_PLUNDER(7, 0, 15, 30, "SLUMS_QA304_SPOT_01");
    TA_PLUNDER(15, 30, 7, 0, "SLUMS_QA304_SPOT_01");
}

func void RTN_QA304_MILITIA_13504() {
    TA_RUNTOWP(7, 0, 15, 30, "SLUMS_QA304_SPOT_04");
    TA_RUNTOWP(15, 30, 7, 0, "SLUMS_QA304_SPOT_04");
}

func void RTN_QA304_SHIP_13504() {
    TA_RUNTOWP(7, 30, 14, 0, "HARBOUR_PATH_301");
    TA_RUNTOWP(14, 0, 7, 30, "HARBOUR_PATH_301");
}

func void RTN_QA304_SMALLTALK_13504() {
    TA_SMALLTALK(7, 0, 15, 30, "SLUMS_QA304_SPOT_03");
    TA_SMALLTALK(15, 30, 7, 0, "SLUMS_QA304_SPOT_03");
}

func void RTN_TOT_13504() {
    TA_SMALLTALK(7, 0, 15, 30, TOT);
    TA_SMALLTALK(15, 30, 7, 0, TOT);
}
