instance VLK_13380_GIRL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 13380;
    VOICE = 34;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13380_GIRL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_13380_GIRL, FEMALE, HUMHEADBABE5, FACE_WN_CITIZEN51, 5, 35605);
    MDL_APPLYOVERLAYMDS(VLK_13380_GIRL, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13380_GIRL);
    B_GIVENPCTALENTS(VLK_13380_GIRL);
    B_SETFIGHTSKILLS(VLK_13380_GIRL, 30);
    DAILY_ROUTINE = RTN_START_13380;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_13380() {
    TA_STAND_EATING(9, 0, 11, 30, "HARBOUR_TAVERN_99");
    TA_SMALLTALK(11, 30, 13, 30, "SLUMS_SMALLTALK_02");
    TA_SIT_BENCH(13, 30, 18, 0, "PARTM4_BENCH_01");
    TA_PRAYSTAND(18, 0, 19, 0, "HARBOUR_PRAY_02");
    TA_STAND_EATING(19, 0, 22, 0, "PARTM8_PATH_52");
    TA_STAND_EATING(22, 0, 9, 0, "TOT2");
}

func void RTN_KQ404_CONCERT_13380() {
    TA_STAND_EATING(9, 0, 11, 30, "HARBOUR_TAVERN_99");
    TA_SMALLTALK(11, 30, 13, 30, "SLUMS_SMALLTALK_02");
    TA_SIT_BENCH(13, 30, 18, 0, "PARTM4_BENCH_01");
    TA_CONCERT_WATCH(18, 0, 21, 0, "KQ404_VIEWER_03");
    TA_STAND_EATING(21, 0, 22, 0, "PARTM8_PATH_52");
    TA_STAND_EATING(22, 0, 9, 0, "TOT2");
}

