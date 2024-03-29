instance VLK_13687_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 13687;
    VOICE = 40;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_13687_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_13687_CITIZEN, FEMALE, HUMHEADBABE3, FACE_WP_CITIZEN117, 4, 33900);
    MDL_APPLYOVERLAYMDS(VLK_13687_CITIZEN, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13687_CITIZEN);
    B_GIVENPCTALENTS(VLK_13687_CITIZEN);
    B_SETFIGHTSKILLS(VLK_13687_CITIZEN, 30);
    DAILY_ROUTINE = RTN_START_13687;
}

func void RTN_START_13687() {
    TA_STAYSTRAIGHT(7, 0, 12, 0, "PARTM1_PATH_42");
    TA_STAYSTRAIGHT(12, 0, 7, 0, "PARTM1_PATH_42");
}

func void RTN_SQ207_RUNTOWP_13687() {
    TA_RUNTOWP(7, 0, 12, 0, "PARTM1_STAND_05");
    TA_RUNTOWP(12, 0, 7, 0, "PARTM1_STAND_05");
}

func void RTN_TOT_13687() {
    TA_RUNTOWP(7, 0, 12, 0, TOT);
    TA_RUNTOWP(12, 0, 7, 0, TOT);
}

