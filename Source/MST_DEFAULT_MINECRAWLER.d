prototype MST_DEFAULT_MINECRAWLER(C_NPC) {
    NAME[0] = NAME_MINECRAWLER;
    GUILD = GIL_MINECRAWLER;
    AIVAR[43] = ID_MINECRAWLER;
    LEVEL = 16;
    ATTRIBUTE[4] = 70;
    ATTRIBUTE[5] = 60;
    ATTRIBUTE[1] = 200;
    ATTRIBUTE[0] = 200;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 75;
    PROTECTION[2] = 60;
    PROTECTION[6] = 70;
    PROTECTION[3] = 10;
    PROTECTION[4] = 15;
    PROTECTION[5] = 20;
    DAMAGETYPE = DAM_EDGE;
    FIGHT_TACTIC = FAI_MINECRAWLER;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = PERC_DIST_MONSTER_ACTIVE_MAX;
    AIVAR[26] = TRUE;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = FALSE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[38] = ONLYROUTINE;
}

prototype MST_DEFAULT_MINECRAWLER_YOUNG(C_NPC) {
    NAME[0] = NAME_MINECRAWLERYOUNG;
    GUILD = GIL_MINECRAWLER;
    AIVAR[43] = ID_MINECRAWLER;
    LEVEL = 12;
    ATTRIBUTE[4] = 40;
    ATTRIBUTE[5] = 40;
    ATTRIBUTE[1] = 90;
    ATTRIBUTE[0] = 90;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 45;
    PROTECTION[2] = 35;
    PROTECTION[6] = 40;
    PROTECTION[3] = 0;
    PROTECTION[4] = 5;
    PROTECTION[5] = 5;
    DAMAGETYPE = DAM_EDGE;
    FIGHT_TACTIC = FAI_MINECRAWLER;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = PERC_DIST_MONSTER_ACTIVE_MAX;
    AIVAR[26] = TRUE;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = FALSE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[38] = ONLYROUTINE;
    MDL_SETMODELSCALE(SELF, 1060320051, 1060320051, 1060320051);
}

prototype MST_DEFAULT_MINECRAWLER_RUNE(C_NPC) {
    NAME[0] = NAME_MINECRAWLERDRONE;
    GUILD = GIL_MINECRAWLER_RUNE;
    AIVAR[43] = ID_MINECRAWLER;
    LEVEL = 15;
    ATTRIBUTE[4] = 60;
    ATTRIBUTE[5] = 60;
    ATTRIBUTE[1] = 200;
    ATTRIBUTE[0] = 200;
    ATTRIBUTE[3] = 300;
    ATTRIBUTE[2] = 300;
    PROTECTION[1] = 80;
    PROTECTION[2] = 55;
    PROTECTION[6] = 90;
    PROTECTION[3] = 100;
    PROTECTION[4] = 20;
    PROTECTION[5] = 50;
    DAMAGETYPE = DAM_EDGE;
    FIGHT_TACTIC = FAI_MINECRAWLER;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = PERC_DIST_MONSTER_ACTIVE_MAX;
    AIVAR[26] = TRUE;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = FALSE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[38] = ONLYROUTINE;
}

func void B_SETVISUALS_MINECRAWLER() {
    MDL_SETVISUAL(SELF, CRAWLERMDS);
    MDL_SETVISUALBODY(SELF, "CRW_NORMAL_BODY", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

func void B_SETVISUALS_YMINECRAWLER() {
    MDL_SETVISUAL(SELF, CRAWLERMDS);
    MDL_SETVISUALBODY(SELF, "CRW_YOUNG_BODY", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

func void B_SETVISUALS_MINECRAWLER_RUNE() {
    MDL_SETVISUAL(SELF, "CRAWLER_RUNE.mds");
    MDL_SETVISUALBODY(SELF, "CRW_ACID_BODY", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

instance MINECRAWLER(MST_DEFAULT_MINECRAWLER) {
    MST_DEFAULT_MINECRAWLER();
    B_SETVISUALS_MINECRAWLER();
    NPC_SETTOFISTMODE(MINECRAWLER);
}

instance YMINECRAWLER(MST_DEFAULT_MINECRAWLER_YOUNG) {
    MST_DEFAULT_MINECRAWLER_YOUNG();
    B_SETVISUALS_YMINECRAWLER();
    NPC_SETTOFISTMODE(YMINECRAWLER);
}

instance MINECRAWLER_RUNE(MST_DEFAULT_MINECRAWLER_RUNE) {
    MST_DEFAULT_MINECRAWLER_RUNE();
    B_SETVISUALS_MINECRAWLER_RUNE();
    AIVAR[26] = FALSE;
    B_GIVENPCTALENTS(MINECRAWLER_RUNE);
}

instance YMINECRAWLER_QA304_01(MST_DEFAULT_MINECRAWLER_YOUNG) {
    MST_DEFAULT_MINECRAWLER_YOUNG();
    B_SETVISUALS_YMINECRAWLER();
    NPC_SETTOFISTMODE(YMINECRAWLER_QA304_01);
}

instance YMINECRAWLER_QA304_02(MST_DEFAULT_MINECRAWLER_YOUNG) {
    MST_DEFAULT_MINECRAWLER_YOUNG();
    B_SETVISUALS_YMINECRAWLER();
    NPC_SETTOFISTMODE(YMINECRAWLER_QA304_02);
}

instance YMINECRAWLER_QA304_03(MST_DEFAULT_MINECRAWLER_YOUNG) {
    MST_DEFAULT_MINECRAWLER_YOUNG();
    B_SETVISUALS_YMINECRAWLER();
    NPC_SETTOFISTMODE(YMINECRAWLER_QA304_03);
}

instance YMINECRAWLER_QA304_04(MST_DEFAULT_MINECRAWLER_YOUNG) {
    MST_DEFAULT_MINECRAWLER_YOUNG();
    B_SETVISUALS_YMINECRAWLER();
    NPC_SETTOFISTMODE(YMINECRAWLER_QA304_04);
}

instance YMINECRAWLER_QA304_05(MST_DEFAULT_MINECRAWLER_YOUNG) {
    MST_DEFAULT_MINECRAWLER_YOUNG();
    B_SETVISUALS_YMINECRAWLER();
    NPC_SETTOFISTMODE(YMINECRAWLER_QA304_05);
}

instance MINECRAWLER_Q403_01(MST_DEFAULT_MINECRAWLER) {
    MST_DEFAULT_MINECRAWLER();
    B_SETVISUALS_MINECRAWLER();
    NPC_SETTOFISTMODE(MINECRAWLER_Q403_01);
}

instance MINECRAWLER_Q403_02(MST_DEFAULT_MINECRAWLER) {
    MST_DEFAULT_MINECRAWLER();
    B_SETVISUALS_MINECRAWLER();
    NPC_SETTOFISTMODE(MINECRAWLER_Q403_02);
}

instance MINECRAWLER_Q403_03(MST_DEFAULT_MINECRAWLER) {
    MST_DEFAULT_MINECRAWLER();
    B_SETVISUALS_MINECRAWLER();
    NPC_SETTOFISTMODE(MINECRAWLER_Q403_03);
}

