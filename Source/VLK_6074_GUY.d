instance VLK_6074_GUY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARBEITER;
    GUILD = GIL_VLK;
    ID = 6074;
    VOICE = 59;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6074_GUY, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6074_GUY, MALE, HUMHEADPONY, FACE_L_CITIZEN45, 2, 35542);
    MDL_APPLYOVERLAYMDS(VLK_6074_GUY, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6074_GUY);
    B_GIVENPCTALENTS(VLK_6074_GUY);
    B_SETFIGHTSKILLS(VLK_6074_GUY, 40);
    DAILY_ROUTINE = RTN_START_6074;
    AIVAR[70] = NPC_AMB_CITY_WORKER;
}

func void RTN_START_6074() {
    TA_SAW(8, 0, 13, 30, "HARBOUR_SHIPYARD_04");
    TA_REPAIR_HUT(13, 30, 15, 0, "HARBOUR_REPAIR_07");
    TA_STAND_EATING(15, 0, 16, 30, "HARBOUR_WRKSHP_OUT03");
    TA_REPAIR_HUT(16, 30, 18, 30, "HARBOUR_REPAIR_06");
    TA_SAW(18, 30, 21, 45, "HARBOUR_SHIPYARD_04");
    TA_SIT_CHAIR_EAT(21, 45, 23, 0, "PARTM1_HOTEL_CHAIR_01");
    TA_SLEEP(23, 0, 8, 0, "PARTM1_HOTEL_BED_11");
}

func void RTN_KQ406_STOP_6074() {
    TA_STAND_EATING(8, 0, 21, 45, "HARBOUR_WRKSHP_OUT03");
    TA_SIT_CHAIR_EAT(21, 45, 23, 0, "PARTM1_HOTEL_CHAIR_01");
    TA_SLEEP(23, 0, 8, 0, "PARTM1_HOTEL_BED_11");
}

func void RTN_KQ406_ANGRYMOB_6074() {
    TA_ANGRYMOB_KQ406(8, 0, 9, 0, "HARBOUR_KQ406_ANGRYMOB_01");
    TA_ANGRYMOB_KQ406(9, 0, 8, 0, "HARBOUR_KQ406_ANGRYMOB_01");
}

