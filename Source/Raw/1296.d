instance MIL_11247_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 0x2bef;
    VOICE = 55;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_11247_MILITIA, 40);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(MIL_11247_MILITIA, MALE, HUMHEADBALD, FACE_N_MILITIA77, 1, 0x8aa0);
    MDL_APPLYOVERLAYMDS(MIL_11247_MILITIA, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_11247_MILITIA);
    B_GIVENPCTALENTS(MIL_11247_MILITIA);
    B_SETFIGHTSKILLS(MIL_11247_MILITIA, 60);
    DAILY_ROUTINE = RTN_START_11247;
}

func void RTN_START_11247() {
    TA_REFUGEE03ATTACK(7, 0, 22, 0, "PARTM2_PATH_03");
    TA_REFUGEE03ATTACK(22, 0, 7, 0, "PARTM2_PATH_03");
}

func void RTN_AFTEREVENT_11247() {
    TA_STAND_ARMSCROSSED(7, 0, 22, 0, "PARTM2_CONTROL_13");
    TA_STAND_ARMSCROSSED(22, 0, 7, 0, "PARTM2_CONTROL_13");
}

func void RTN_TOT_11247() {
    TA_STAND_WP(7, 0, 22, 0, TOT2);
    TA_STAND_WP(22, 0, 7, 0, TOT2);
}
