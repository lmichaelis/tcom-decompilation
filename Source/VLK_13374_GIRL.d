instance VLK_13374_GIRL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 13374;
    VOICE = 16;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13374_GIRL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_13374_GIRL, FEMALE, HUMHEADBABE1, FACE_WN_CITIZEN56, 5, 35601);
    MDL_APPLYOVERLAYMDS(VLK_13374_GIRL, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13374_GIRL);
    B_GIVENPCTALENTS(VLK_13374_GIRL);
    B_SETFIGHTSKILLS(VLK_13374_GIRL, 30);
    DAILY_ROUTINE = RTN_START_13374;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_13374() {
    TA_SIT_CHAIR_EAT(7, 0, 11, 0, "PARTM2_TAVERN_CHAIR_02");
    TA_SMALLTALK(11, 0, 13, 30, "SLUMS_SMALLTALK_03");
    TA_STOMP_HERB(13, 30, 16, 30, "HARBOUR_HERB_02");
    TA_SMALLTALK(16, 30, 18, 0, "HARBOUR_SMALLTALK_14");
    TA_PRAYSTAND(18, 0, 19, 0, "HARBOUR_PRAY_01");
    TA_SIT_CHAIR_EAT(19, 0, 21, 45, "PARTM2_TAVERN_CHAIR_02");
    TA_SLEEP(21, 45, 7, 0, "PARTM1_HOTEL_BED_07");
}

func void RTN_Q206_FINBARBODY_13374() {
    TA_STOMP_HERB(7, 0, 23, 0, "HARBOUR_HERB_02");
    TA_STOMP_HERB(23, 0, 7, 0, TOT2);
}

func void RTN_KQ404_CONCERT_13374() {
    TA_SIT_CHAIR_EAT(7, 0, 11, 0, "PARTM2_TAVERN_CHAIR_02");
    TA_SMALLTALK(11, 0, 13, 30, "SLUMS_SMALLTALK_03");
    TA_STOMP_HERB(13, 0, 16, 30, "HARBOUR_HERB_02");
    TA_SMALLTALK(16, 30, 18, 0, "HARBOUR_SMALLTALK_14");
    TA_CONCERT_WATCH(18, 0, 21, 0, "KQ404_VIEWER_08");
    TA_SIT_CHAIR_EAT(21, 0, 21, 45, "PARTM2_TAVERN_CHAIR_02");
    TA_SLEEP(21, 45, 7, 0, "PARTM1_HOTEL_BED_07");
}
