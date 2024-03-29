instance VLK_6303_ANAIS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_ANAIS;
    GUILD = GIL_VLK;
    ID = 6303;
    VOICE = 69;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6303_ANAIS, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6303_ANAIS, FEMALE, HUMHEADBABE, FACE_WN_WITNESS02, 5, 35606);
    MDL_APPLYOVERLAYMDS(VLK_6303_ANAIS, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6303_ANAIS);
    B_GIVENPCTALENTS(VLK_6303_ANAIS);
    B_SETFIGHTSKILLS(VLK_6303_ANAIS, 40);
    DAILY_ROUTINE = RTN_START_6303;
}

func void RTN_START_6303() {
    TA_SEARCH_SCARED(8, 0, 13, 30, "HARBOUR_PATH_99");
    TA_SEARCH_SCARED(13, 30, 8, 0, "HARBOUR_PATH_99");
}

func void RTN_Q206_GUIDE_6303() {
    TA_GUIDE_PLAYER(8, 0, 13, 30, "SLUMS_PATH_36");
    TA_GUIDE_PLAYER(13, 30, 8, 0, "SLUMS_PATH_36");
}

func void RTN_Q206_HOME_6303() {
    TA_SLEEP(8, 0, 13, 30, "SLUMS_HOUSE13_04");
    TA_SLEEP(13, 30, 8, 0, "SLUMS_HOUSE13_04");
}

func void RTN_TOT_6303() {
    TA_SEARCH_SCARED(8, 0, 13, 30, TOT);
    TA_SEARCH_SCARED(13, 30, 8, 0, TOT);
}

