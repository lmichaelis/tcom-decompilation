instance VLK_11086_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOBO;
    GUILD = GIL_NONE;
    ID = 11086;
    VOICE = 6;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_11086_HOBO, 3);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(VLK_11086_HOBO, HUMANSMDS);
    MDL_SETVISUALBODY(VLK_11086_HOBO, HUMBODYNAKED0, BODYTEX_L_HOMELESS01, 0, HUMHEADTHIEF, FACE_L_HOBO12, TEETHTEX_ROTTEN_V2, -(1));
    MDL_APPLYOVERLAYMDS(VLK_11086_HOBO, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11086_HOBO);
    B_GIVENPCTALENTS(VLK_11086_HOBO);
    B_SETFIGHTSKILLS(VLK_11086_HOBO, 25);
    DAILY_ROUTINE = RTN_START_11086;
    AIVAR[70] = NPC_AMB_CITY_HOMELESS;
}

func void RTN_START_11086() {
    TA_VOMIT(10, 0, 11, 0, "PARTM3_HOBO_06");
    TA_PEE(11, 0, 12, 0, "PARTM3_HOBO_05");
    TA_STAND_DRINKING(12, 0, 15, 0, "PARTM3_PATH_210");
    TA_VOMIT(15, 0, 16, 0, "PARTM3_HOBO_06");
    TA_STAND_DRINKING(16, 0, 18, 0, "PARTM3_PATH_210");
    TA_PEE(18, 0, 19, 0, "PARTM3_HOBO_05");
    TA_STAND_DRINKING(19, 0, 21, 0, "PARTM3_PATH_210");
    TA_PEE(21, 0, 22, 0, "PARTM3_HOBO_05");
    TA_VOMIT(22, 0, 23, 0, "PARTM3_HOBO_06");
    TA_STAND_DRINKING(23, 0, 2, 0, "PARTM3_PATH_210");
    TA_VOMIT(2, 0, 3, 0, "PARTM3_HOBO_06");
    TA_STAND_DRINKING(3, 0, 6, 0, "PARTM3_PATH_210");
    TA_PEE(6, 0, 7, 0, "PARTM3_HOBO_05");
    TA_STAND_DRINKING(7, 0, 10, 0, "PARTM3_PATH_210");
}

func void RTN_TOT_11086() {
    TA_STAYSTRAIGHT(8, 0, 10, 0, TOT2);
    TA_STAYSTRAIGHT(10, 0, 8, 0, TOT2);
}

