instance VLK_6066_GIRL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 6066;
    VOICE = 31;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6066_GIRL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6066_GIRL, FEMALE, HUMHEADBABE1, FACE_WN_CITIZEN37, 5, 33912);
    MDL_APPLYOVERLAYMDS(VLK_6066_GIRL, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6066_GIRL);
    B_GIVENPCTALENTS(VLK_6066_GIRL);
    B_SETFIGHTSKILLS(VLK_6066_GIRL, 30);
    DAILY_ROUTINE = RTN_START_6066;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6066() {
    TA_STAND_DRINKING(6, 30, 10, 0, "PARTM3_STAND_04");
    TA_STAND_DRINKING(10, 0, 11, 0, "HARBOUR_PATH_148");
    TA_SMALLTALK(11, 0, 15, 0, "PARTM3_SMALLTALK_03");
    TA_SIT_BENCH(15, 0, 18, 0, "PARTM1_BENCH_03");
    TA_STAND_DRINKING(18, 0, 22, 30, "PARTM3_STAND_06");
    TA_SIT_THRONE(22, 30, 6, 30, "PARTM1_HOTEL_THRONE_01");
}

func void RTN_KQ404_CONCERT_6066() {
    TA_STAND_DRINKING(6, 30, 10, 0, "PARTM3_STAND_04");
    TA_STAND_DRINKING(10, 0, 11, 0, "HARBOUR_PATH_148");
    TA_SMALLTALK(11, 0, 15, 0, "PARTM3_SMALLTALK_03");
    TA_SIT_BENCH(15, 0, 18, 0, "PARTM1_BENCH_03");
    TA_CONCERT_WATCH(18, 0, 21, 0, "KQ404_VIEWER_10");
    TA_STAND_DRINKING(21, 0, 22, 30, "PARTM3_STAND_06");
    TA_SIT_THRONE(22, 30, 6, 30, "PARTM1_HOTEL_THRONE_01");
}

