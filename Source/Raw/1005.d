prototype MST_DEFAULT_MINECRAWLERWARRIOR(C_NPC) {
    NAME[0] = NAME_MINECRAWLERWARRIOR;
    GUILD = GIL_MINECRAWLER;
    AIVAR[43] = ID_MINECRAWLERWARRIOR;
    LEVEL = 35;
    ATTRIBUTE[4] = 160;
    ATTRIBUTE[5] = 90;
    ATTRIBUTE[1] = 320;
    ATTRIBUTE[0] = 320;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 140;
    PROTECTION[2] = 130;
    PROTECTION[6] = 150;
    PROTECTION[3] = 50;
    PROTECTION[4] = 70;
    PROTECTION[5] = 45;
    DAMAGETYPE = DAM_EDGE;
    FIGHT_TACTIC = FAI_MINECRAWLER;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = PERC_DIST_MONSTER_ACTIVE_MAX;
    AIVAR[26] = TRUE;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = FALSE;
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[38] = ONLYROUTINE;
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
}

func void B_SETVISUALS_MINECRAWLERWARRIOR() {
    MDL_SETVISUAL(SELF, CRAWLERMDS);
    MDL_SETVISUALBODY(SELF, "Cr2_Body", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

func void B_SETVISUALS_MINECRAWLERSOLDIER() {
    MDL_SETVISUAL(SELF, CRAWLERMDS);
    MDL_SETVISUALBODY(SELF, "CRW_SOLDIER_BODY", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

instance MINECRAWLERWARRIOR(MST_DEFAULT_MINECRAWLERWARRIOR) {
    MST_DEFAULT_MINECRAWLERWARRIOR();
    B_SETVISUALS_MINECRAWLERWARRIOR();
    NPC_SETTOFISTMODE(MINECRAWLERWARRIOR);
}

instance MINECRAWLERWARRIOR_Q403_01(MST_DEFAULT_MINECRAWLERWARRIOR) {
    MST_DEFAULT_MINECRAWLERWARRIOR();
    B_SETVISUALS_MINECRAWLERWARRIOR();
    NPC_SETTOFISTMODE(MINECRAWLERWARRIOR_Q403_01);
}

instance MINECRAWLERWARRIOR_Q403_02(MST_DEFAULT_MINECRAWLERWARRIOR) {
    MST_DEFAULT_MINECRAWLERWARRIOR();
    B_SETVISUALS_MINECRAWLERWARRIOR();
    NPC_SETTOFISTMODE(MINECRAWLERWARRIOR_Q403_02);
}

instance MINECRAWLERWARRIOR_BEFORE_Q403_01(MST_DEFAULT_MINECRAWLERWARRIOR) {
    MST_DEFAULT_MINECRAWLERWARRIOR();
    B_SETVISUALS_MINECRAWLERWARRIOR();
    NPC_SETTOFISTMODE(MINECRAWLERWARRIOR_BEFORE_Q403_01);
}

instance MINECRAWLERWARRIOR_BEFORE_Q403_02(MST_DEFAULT_MINECRAWLERWARRIOR) {
    MST_DEFAULT_MINECRAWLERWARRIOR();
    B_SETVISUALS_MINECRAWLERWARRIOR();
    NPC_SETTOFISTMODE(MINECRAWLERWARRIOR_BEFORE_Q403_02);
}

instance MINECRAWLERWARRIOR_BEFORE_Q403_03(MST_DEFAULT_MINECRAWLERWARRIOR) {
    MST_DEFAULT_MINECRAWLERWARRIOR();
    B_SETVISUALS_MINECRAWLERWARRIOR();
    NPC_SETTOFISTMODE(MINECRAWLERWARRIOR_BEFORE_Q403_03);
}

