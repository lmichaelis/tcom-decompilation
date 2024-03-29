instance VLK_13505_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_FULKOASSISTANT;
    GUILD = GIL_VLK;
    ID = 13505;
    VOICE = 63;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_13505_WORKER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_13505_WORKER, MALE, HUMHEADPYMONTENEU, FACE_P_WORKER33, 0, 33906);
    MDL_APPLYOVERLAYMDS(VLK_13505_WORKER, HUMANSPOCKETWALKMDS);
    B_CREATEAMBIENTINV(VLK_13505_WORKER);
    B_GIVENPCTALENTS(VLK_13505_WORKER);
    B_SETFIGHTSKILLS(VLK_13505_WORKER, 30);
    DAILY_ROUTINE = RTN_START_13505;
}

func void RTN_START_13505() {
    TA_STAYSTRAIGHT(7, 0, 15, 30, "HARBOUR_PATH_294");
    TA_STAYSTRAIGHT(15, 30, 7, 0, "HARBOUR_PATH_294");
}

func void RTN_QA304_TAKECHESTS_13505() {
    TA_PLUNDER(7, 0, 15, 30, "HARBOUR_SHIP_AVENAL_04");
    TA_PLUNDER(15, 30, 7, 0, "HARBOUR_SHIP_AVENAL_04");
}

func void RTN_QA304_SLUMS_13505() {
    TA_QA304_BARREL(7, 0, 15, 30, "SLUMS_QA304_SPOT_02");
    TA_QA304_BARREL(15, 30, 7, 0, "SLUMS_QA304_SPOT_02");
}

func void RTN_QA304_SLUMSV2_13505() {
    TA_QA304_BARREL(7, 0, 15, 30, "SLUMS_QA304_SPOT_07");
    TA_QA304_BARREL(15, 30, 7, 0, "SLUMS_QA304_SPOT_07");
}

func void RTN_QA304_SLUMS_PLUNDER_13505() {
    TA_PLUNDER(7, 0, 15, 30, "SLUMS_QA304_SPOT_02");
    TA_PLUNDER(15, 30, 7, 0, "SLUMS_QA304_SPOT_02");
}

func void RTN_QA304_MILITIA_13505() {
    TA_RUNTOWP(7, 0, 15, 30, "SLUMS_QA304_SPOT_05");
    TA_RUNTOWP(15, 30, 7, 0, "SLUMS_QA304_SPOT_05");
}

func void RTN_QA304_SHIP_13505() {
    TA_RUNTOWP(7, 30, 14, 0, "HARBOUR_PATH_293");
    TA_RUNTOWP(14, 0, 7, 30, "HARBOUR_PATH_293");
}

func void RTN_QA304_SMALLTALK_13505() {
    TA_RUNTOWP(7, 30, 14, 0, "SLUMS_PATH_38");
    TA_RUNTOWP(14, 0, 7, 30, "SLUMS_PATH_38");
}

func void RTN_QA304_GUIDE_13505() {
    TA_RUNTOWP(7, 30, 14, 0, "PARTM1_GUILDHOUSE_LORENZO_GARDEN");
    TA_RUNTOWP(14, 0, 7, 30, "PARTM1_GUILDHOUSE_LORENZO_GARDEN");
}

func void RTN_TOT_13505() {
    TA_STAYSTRAIGHT(7, 30, 14, 0, TOT);
    TA_STAYSTRAIGHT(14, 0, 7, 30, TOT);
}

