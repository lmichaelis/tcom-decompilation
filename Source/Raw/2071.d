instance VLK_6235_THIEF(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SHADYCITIZEN;
    GUILD = GIL_NONE;
    ID = 0x185b;
    VOICE = 43;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6235_THIEF, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6235_THIEF, MALE, HUMHEADTHIEF, FACE_N_THIEF01, 1, 0x8ad6);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6235_THIEF);
    CREATEINVITEMS(VLK_6235_THIEF, 0x9130, 1);
    B_GIVENPCTALENTS(VLK_6235_THIEF);
    B_SETFIGHTSKILLS(VLK_6235_THIEF, 35);
    DAILY_ROUTINE = RTN_START_6235;
}

func void RTN_START_6235() {
    TA_READ(8, 0, 18, 0, "PARTM8_THIEF");
    TA_READ(18, 0, 8, 0, "PARTM8_THIEF");
}

func void RTN_BARRACK_6235() {
    TA_IDLE(8, 0, 18, 0, "PARTM1_PATH_99");
    TA_IDLE(18, 0, 8, 0, "PARTM1_PATH_99");
}

func void RTN_GOTOPRISON_6235() {
    TA_IDLE(8, 0, 18, 0, "PARTM3_PRISON_11");
    TA_IDLE(18, 0, 8, 0, "PARTM3_PRISON_11");
}

func void RTN_PRISON_6235() {
    TA_STAYSTRAIGHT(9, 0, 12, 0, "PARTM3_CELL2_01");
    TA_LEAN(12, 0, 14, 0, "PARTM3_CELL2_04");
    TA_SEARCH_SCARED(14, 0, 17, 0, "PARTM3_CELL2_01");
    TA_VOMIT(17, 0, 18, 30, "PARTM3_CELL2_02");
    TA_SEARCH_SCARED(18, 30, 20, 0, "PARTM3_CELL2_01");
    TA_STAYSTRAIGHT(20, 0, 22, 0, "PARTM3_CELL2_01");
    TA_SLEEP(22, 0, 9, 0, "PARTM3_CELL2_03");
}

func void RTN_TOT_6235() {
    TA_IDLE(8, 0, 18, 0, TOT);
    TA_IDLE(18, 0, 8, 0, TOT);
}

