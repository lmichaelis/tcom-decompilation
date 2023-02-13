instance NONE_6374_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 6374;
    VOICE = 46;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_6374_REFUGEE, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_6374_REFUGEE, MALE, HUMHEADBALD, FACE_N_REFUGEE01, 1, 35422);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6374_REFUGEE);
    MDL_APPLYOVERLAYMDS(NONE_6374_REFUGEE, HUMANSARROGANCEMDS);
    B_GIVENPCTALENTS(NONE_6374_REFUGEE);
    B_SETFIGHTSKILLS(NONE_6374_REFUGEE, 45);
    DAILY_ROUTINE = RTN_START_6374;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_6374() {
    TA_STAND_EATING(9, 0, 14, 0, "PART16_PATH_114");
    TA_PEE(14, 0, 14, 15, "PART16_PATH_142");
    TA_SIT_SLAVSQUAT(14, 15, 17, 0, "PART16_PATH_19");
    TA_STAND_DRINKING(17, 0, 20, 0, "PART16_PATH_19");
    TA_SMALLTALK(20, 0, 22, 0, "PART16_SMALLTALK_01");
    TA_SLEEP(22, 0, 9, 0, "PART16_PATH_117");
}

func void RTN_SCARED_6374() {
    TA_SEARCH_SCARED(22, 0, 7, 30, "PART16_PATH_126");
    TA_SEARCH_SCARED(7, 30, 22, 0, "PART16_PATH_126");
}

func void RTN_SWAMP_6374() {
    TA_SIT_TURKISH(7, 0, 11, 0, "PART11_SWAMP_CAMP_08");
    TA_PLUNDER(11, 0, 16, 0, "PART11_SWAMP_25");
    TA_PLUNDER(16, 0, 18, 0, "PART11_SWAMP_30");
    TA_SIT_BENCH_DRINK(18, 0, 21, 0, "PART11_MINICAMP_BENCH_01");
    TA_FIREPLACE(21, 0, 7, 0, "PART11_SWAMP_CAMP_03");
}

func void RTN_TOT2_6374() {
    TA_STAND_ARMSCROSSED(7, 0, 22, 0, TOT2);
    TA_STAND_ARMSCROSSED(22, 0, 7, 0, TOT2);
}
