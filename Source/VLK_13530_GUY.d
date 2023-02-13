instance VLK_13530_GUY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BEGGAR;
    GUILD = GIL_NONE;
    ID = 13530;
    VOICE = 25;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_13530_GUY, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[54] = TRUE;
    AIVAR[55] = TRUE;
    AIVAR[56] = TRUE;
    B_SETNPCVISUAL(VLK_13530_GUY, MALE, HUMHEADTHIEF, FACE_L_FCFIGHTER04, 2, 33906);
    MDL_APPLYOVERLAYMDS(VLK_13530_GUY, HUMANSMILITIAMDS);
    B_CREATEAMBIENTINV(VLK_13530_GUY);
    B_GIVENPCTALENTS(VLK_13530_GUY);
    B_SETFIGHTSKILLS(VLK_13530_GUY, 40);
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
    DAILY_ROUTINE = RTN_START_13530;
    AIVAR[74] = NPC_CITY_IMFROMSLUMS;
    AIVAR[70] = NPC_AMB_CITY_SLUMS;
}

func void RTN_START_13530() {
    TA_SMALLTALK(8, 0, 19, 30, "SLUMS_PATH_257");
    TA_PREPAREFORFIGHT(19, 30, 5, 0, "SLUMS_FIGHTCLUB_16A");
    TA_SMALLTALK(5, 0, 8, 0, "SLUMS_PATH_257");
}

func void RTN_AFTERSQ230_13530() {
    TA_STAND_WP(19, 30, 19, 40, "SLUMS_FIGHTCLUB_16A");
    TA_STAND_WP(19, 40, 19, 30, "SLUMS_FIGHTCLUB_16A");
}

func void RTN_FIGHTCLUB_13530() {
    TA_WATCHFIGHT_DUMB(8, 0, 19, 30, "SLUMS_FIGHTCLUB_25");
    TA_WATCHFIGHT_DUMB(19, 30, 2, 0, "SLUMS_FIGHTCLUB_25");
    TA_WATCHFIGHT_DUMB(2, 0, 8, 0, "SLUMS_FIGHTCLUB_25");
}

