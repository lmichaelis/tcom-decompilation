instance VLK_6070_GUY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARBEITER;
    GUILD = GIL_VLK;
    ID = 0x17b6;
    VOICE = 6;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6070_GUY, 17);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6070_GUY, MALE, HUMHEADPSIONIC, FACE_B_CITIZEN41, 3, 0x8ada);
    MDL_APPLYOVERLAYMDS(VLK_6070_GUY, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6070_GUY);
    B_GIVENPCTALENTS(VLK_6070_GUY);
    B_SETFIGHTSKILLS(VLK_6070_GUY, 30);
    DAILY_ROUTINE = RTN_START_6070;
    AIVAR[70] = NPC_AMB_CITY_WORKER;
}

func void RTN_START_6070() {
    TA_REPAIR_HUT(8, 0, 11, 30, "HARBOUR_WRKSHP_REPAIR04");
    TA_STAND_EATING(11, 30, 12, 30, "HARBOUR_WRKSHP_OUT01");
    TA_REPAIR_HUT(12, 30, 18, 30, "HARBOUR_WRKSHP_REPAIR04");
    TA_SIT_CHAIR_EAT(18, 30, 22, 30, "HARBOUR_TAVERN_GUEST_10");
    TA_SLEEP(22, 30, 8, 0, "PARTM1_HOUSE01_BED_04");
}

func void RTN_Q206_FINBARBODY_6070() {
    TA_REPAIR_HUT(8, 0, 22, 0, "HARBOUR_WRKSHP_REPAIR04");
    TA_REPAIR_HUT(22, 0, 8, 0, TOT2);
}

func void RTN_Q311_6070() {
    TA_IDLE(15, 0, 8, 0, "HARBOUR_CITIZEN_PROPAGANDA_03");
    TA_IDLE(8, 0, 15, 0, "HARBOUR_CITIZEN_PROPAGANDA_03");
}

func void RTN_KQ406_STOP_6070() {
    TA_STAND_EATING(8, 0, 18, 30, "HARBOUR_WRKSHP_REPAIR04");
    TA_SIT_CHAIR_EAT(18, 30, 22, 30, "HARBOUR_TAVERN_GUEST_10");
    TA_SLEEP(22, 30, 8, 0, "PARTM1_HOUSE01_BED_04");
}

func void RTN_KQ406_ANGRYMOB_6070() {
    TA_ANGRYMOB_KQ406(8, 0, 9, 0, "HARBOUR_KQ406_ANGRYMOB_08");
    TA_ANGRYMOB_KQ406(9, 0, 8, 0, "HARBOUR_KQ406_ANGRYMOB_08");
}

