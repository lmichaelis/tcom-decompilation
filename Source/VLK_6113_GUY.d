instance VLK_6113_GUY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 6113;
    VOICE = 25;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6113_GUY, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6113_GUY, MALE, HUMHEADFATBALD, FACE_P_CITIZEN07, 0, 35542);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6113_GUY);
    MDL_APPLYOVERLAYMDS(VLK_6113_GUY, HUMANSTIREDMDS);
    B_GIVENPCTALENTS(VLK_6113_GUY);
    B_SETFIGHTSKILLS(VLK_6113_GUY, 40);
    DAILY_ROUTINE = RTN_START_6113;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6113() {
    TA_STAND_DRINKING(7, 0, 9, 0, "PARTM2_MARKET_02");
    TA_STAND_DRINKING(9, 0, 10, 30, "PARTM8_PATH_52");
    TA_SMALLTALK(10, 30, 12, 45, "PARTM8_SMALLTALK_04");
    TA_SIT_BENCH(12, 45, 14, 0, "PARTM8_BENCH_48");
    TA_SIT_CHAIR(14, 0, 18, 0, "PARTM2_TAVERN_CHAIR_02");
    TA_SIT_BENCH(18, 0, 21, 20, "PARTM2_BENCH_03");
    TA_SIT_BENCH(21, 20, 7, 0, "TOT2");
}

func void RTN_GRAVE_6113() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PARTM8_FUNERAL_CITIZEN_03");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PARTM8_FUNERAL_CITIZEN_03");
}

