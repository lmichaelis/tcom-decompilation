instance VLK_6114_GUY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 6114;
    VOICE = 61;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6114_GUY, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6114_GUY, MALE, HUMHEADFATBALD, FACE_N_PATRON_54, 1, 35547);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6114_GUY);
    MDL_APPLYOVERLAYMDS(VLK_6114_GUY, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(VLK_6114_GUY);
    B_SETFIGHTSKILLS(VLK_6114_GUY, 40);
    DAILY_ROUTINE = RTN_START_6114;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6114() {
    TA_STAND_ARMSCROSSED(8, 0, 10, 0, "PARTM2_MARKET_03");
    TA_STAND_EATING(10, 0, 12, 0, "PARTM8_PATH_53");
    TA_SIT_BENCH(12, 0, 14, 4, "PARTM8_BENCH_46");
    TA_SMALLTALK(14, 4, 14, 45, "PARTM8_SMALLTALK_02");
    TA_STAND_ARMSCROSSED(14, 45, 16, 30, "PARTM2_MARKET_03");
    TA_SIT_CHAIR(16, 30, 20, 0, "PARTM2_TAVERN_CHAIR_01");
    TA_SMALLTALK(20, 0, 21, 30, "PARTM2_TAVERN_SMALLTALK_02");
    TA_SMALLTALK(21, 30, 8, 0, "TOT2");
}

