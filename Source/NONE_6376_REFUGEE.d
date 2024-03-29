instance NONE_6376_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 6376;
    VOICE = 68;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_6376_REFUGEE, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_6376_REFUGEE, MALE, HUMHEADWITHOUTPONY, FACE_L_REFUGEE03, 2, 35578);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6376_REFUGEE);
    MDL_APPLYOVERLAYMDS(NONE_6376_REFUGEE, HUMANSPOCKETWALKMDS);
    B_GIVENPCTALENTS(NONE_6376_REFUGEE);
    B_SETFIGHTSKILLS(NONE_6376_REFUGEE, 45);
    DAILY_ROUTINE = RTN_START_6376;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_6376() {
    TA_SIT_SLAVSQUAT(7, 0, 15, 0, "PART16_PATH_134");
    TA_STAND_EATING(15, 0, 17, 0, "PART16_PATH_134");
    TA_SMALLTALK(17, 0, 19, 0, "PART16_SMALLTALK_04");
    TA_STAND_DRINKING(19, 0, 21, 0, "PART16_PATH_134");
    TA_STAND_EATING(21, 0, 22, 0, "PART16_PATH_134");
    TA_SLEEP(22, 0, 7, 0, "PART16_PATH_135");
}

func void RTN_SCARED_6376() {
    TA_SEARCH_SCARED(22, 0, 7, 30, "PART16_PATH_136");
    TA_SEARCH_SCARED(7, 30, 22, 0, "PART16_PATH_136");
}

func void RTN_SWAMP_6376() {
    TA_STAND_EATING(7, 0, 10, 0, "PART11_PATH_181");
    TA_PLUNDER(10, 0, 16, 0, "PART11_SWAMP_29");
    TA_SMALLTALK(16, 0, 18, 0, "PART11_SWAMP_SMALLTALK_01");
    TA_PLUNDER(18, 0, 20, 0, "PART11_SWAMP_29");
    TA_STAND_EATING(20, 0, 22, 0, "PART11_SWAMP_CAMP_02");
    TA_SIT_BENCH(22, 0, 7, 0, "PART11_MINICAMP_BENCH_01");
}

func void RTN_TOT2_6376() {
    TA_STAND_ARMSCROSSED(7, 0, 22, 0, TOT2);
    TA_STAND_ARMSCROSSED(22, 0, 7, 0, TOT2);
}

