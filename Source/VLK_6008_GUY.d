instance VLK_6008_GUY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 6008;
    VOICE = 49;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6008_GUY, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6008_GUY, MALE, HUMHEADPSIONIC, FACE_B_CITIZEN27, 3, 35542);
    MDL_APPLYOVERLAYMDS(VLK_6008_GUY, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6008_GUY);
    B_GIVENPCTALENTS(VLK_6008_GUY);
    B_SETFIGHTSKILLS(VLK_6008_GUY, 40);
    DAILY_ROUTINE = RTN_START_6008;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6008() {
    TA_PLUNDER(6, 0, 10, 0, "HARBOUR_PATH_308");
    TA_PEE(10, 0, 11, 0, "HARBOUR_PATH_285");
    TA_PLUNDER(11, 0, 15, 0, "HARBOUR_PATH_308");
    TA_STAND_EATING(15, 0, 16, 0, "HARBOUR_MARKETSTALLBUY_02");
    TA_SMALLTALK(16, 0, 21, 0, "HARBOUR_SMALLTALK_05");
    TA_SLEEP(21, 0, 6, 0, "HARBOUR_HOUSE12_12");
}

func void RTN_KQ404_CONCERT_6008() {
    TA_PLUNDER(6, 0, 10, 0, "HARBOUR_PATH_308");
    TA_PEE(10, 0, 11, 0, "HARBOUR_PATH_285");
    TA_PLUNDER(11, 0, 15, 0, "HARBOUR_PATH_308");
    TA_STAND_EATING(15, 0, 16, 0, "HARBOUR_MARKETSTALLBUY_02");
    TA_STAND_ARMSCROSSED(16, 0, 18, 0, "KQ404_VIEWER_02");
    TA_CONCERT_WATCH(18, 0, 21, 0, "KQ404_VIEWER_02");
    TA_SLEEP(21, 0, 6, 0, "HARBOUR_HOUSE12_12");
}

func void RTN_Q206_FINBARBODY_6008() {
    TA_PLUNDER(6, 0, 22, 0, "HARBOUR_PATH_308");
    TA_PLUNDER(22, 0, 6, 0, TOT2);
}

