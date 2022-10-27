instance VLK_13375_GIRL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 0x343f;
    VOICE = 33;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13375_GIRL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_13375_GIRL, FEMALE, HUMHEADBABE4, FACE_WN_PATRON_11, 5, 0x8b0c);
    MDL_APPLYOVERLAYMDS(VLK_13375_GIRL, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13375_GIRL);
    B_GIVENPCTALENTS(VLK_13375_GIRL);
    B_SETFIGHTSKILLS(VLK_13375_GIRL, 30);
    DAILY_ROUTINE = RTN_START_13375;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_13375() {
    TA_SIT_BENCH(9, 0, 11, 55, "PARTM3_PATH_251");
    TA_SIT_BENCH(11, 55, 14, 10, "PARTM8_BENCH_19");
    TA_SIT_CHAIR_EAT(14, 10, 15, 0, "PARTM1_HOTEL_CHAIR_05");
    TA_SMALLTALK(15, 0, 18, 0, "PARTM1_SMALLTALK_06");
    TA_STAND_EATING(18, 0, 22, 30, "PARTM2_TAVERN_06");
    TA_SLEEP(22, 30, 9, 0, "PARTM1_HOTEL_BED_09");
}

func void RTN_KQ404_CONCERT_13375() {
    TA_SIT_BENCH(9, 0, 11, 55, "PARTM3_PATH_251");
    TA_SIT_BENCH(11, 55, 14, 10, "PARTM8_BENCH_19");
    TA_SIT_CHAIR_EAT(14, 10, 15, 0, "PARTM1_HOTEL_CHAIR_05");
    TA_SMALLTALK(15, 0, 18, 0, "PARTM1_SMALLTALK_06");
    TA_CONCERT_WATCH(18, 0, 21, 0, "KQ404_VIEWER_09");
    TA_STAND_EATING(21, 0, 22, 30, "PARTM2_TAVERN_06");
    TA_SLEEP(22, 30, 9, 0, "PARTM1_HOTEL_BED_09");
}
