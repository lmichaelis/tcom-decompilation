prototype MST_DEFAULT_MINECRAWLER_KING(C_NPC) {
    NAME[0] = NAME_MINECRAWLERKING;
    GUILD = GIL_MINECRAWLER;
    AIVAR[43] = ID_MINECRAWLERWARRIOR;
    LEVEL = 50;
    ATTRIBUTE[4] = 180;
    ATTRIBUTE[5] = 90;
    ATTRIBUTE[1] = 750;
    ATTRIBUTE[0] = 750;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 160;
    PROTECTION[2] = 150;
    PROTECTION[6] = 170;
    PROTECTION[3] = 70;
    PROTECTION[4] = 85;
    PROTECTION[5] = 75;
    DAMAGETYPE = DAM_EDGE;
    FIGHT_TACTIC = FAI_MINECRAWLER;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = PERC_DIST_MONSTER_ACTIVE_MAX;
    AIVAR[26] = TRUE;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = FALSE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[38] = ONLYROUTINE;
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
}

func void B_SETVISUALS_MINECRAWLERKING() {
    MDL_SETVISUAL(SELF, "Crawler_King.mds");
    MDL_SETVISUALBODY(SELF, "CRQ_King_Body", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

instance MINECRAWLERKING(MST_DEFAULT_MINECRAWLER_KING) {
    MST_DEFAULT_MINECRAWLER_KING();
    B_SETVISUALS_MINECRAWLERKING();
    NPC_SETTOFISTMODE(MINECRAWLERKING);
}

instance MINECRAWLERWARRIOR_Q404_01(MST_DEFAULT_MINECRAWLER_KING) {
    MST_DEFAULT_MINECRAWLER_KING();
    B_SETVISUALS_MINECRAWLERKING();
    NPC_SETTOFISTMODE(MINECRAWLERWARRIOR_Q404_01);
    DAILY_ROUTINE = RTN_START_14030;
}

func void RTN_START_14030() {
    TA_KILLMARVIN(8, 0, 23, 0, "SILVERMINE_PATH_21");
    TA_KILLMARVIN(23, 0, 8, 0, "SILVERMINE_PATH_21");
}

instance MINECRAWLERWARRIOR_Q404_02(MST_DEFAULT_MINECRAWLER_KING) {
    MST_DEFAULT_MINECRAWLER_KING();
    B_SETVISUALS_MINECRAWLERKING();
    NPC_SETTOFISTMODE(MINECRAWLERWARRIOR_Q404_02);
    DAILY_ROUTINE = RTN_START_14031;
}

func void RTN_START_14031() {
    TA_KILLMARVIN(8, 0, 23, 0, "SILVERMINE_PATH_21");
    TA_KILLMARVIN(23, 0, 8, 0, "SILVERMINE_PATH_21");
}

instance MINECRAWLERWARRIOR_Q404_03(MST_DEFAULT_MINECRAWLER_KING) {
    MST_DEFAULT_MINECRAWLER_KING();
    B_SETVISUALS_MINECRAWLERKING();
    NPC_SETTOFISTMODE(MINECRAWLERWARRIOR_Q404_03);
    DAILY_ROUTINE = RTN_START_14032;
}

func void RTN_START_14032() {
    TA_KILLMARVIN(8, 0, 23, 0, "SILVERMINE_PATH_21");
    TA_KILLMARVIN(23, 0, 8, 0, "SILVERMINE_PATH_21");
}

