instance VLK_6305_WITNESS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 6305;
    VOICE = 32;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6305_WITNESS, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6305_WITNESS, FEMALE, HUMHEADBABE, FACE_WB_WITNESS01, 7, 35605);
    MDL_APPLYOVERLAYMDS(VLK_6305_WITNESS, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6305_WITNESS);
    B_GIVENPCTALENTS(VLK_6305_WITNESS);
    B_SETFIGHTSKILLS(VLK_6305_WITNESS, 40);
    DAILY_ROUTINE = RTN_START_6305;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6305() {
    TA_SEARCH_SCARED(8, 0, 13, 30, "HARBOUR_PATH_99_WITNESS01");
    TA_SEARCH_SCARED(13, 30, 8, 0, "HARBOUR_PATH_99_WITNESS01");
}

func void RTN_TOT_6305() {
    TA_SEARCH_SCARED(8, 0, 13, 30, TOT);
    TA_SEARCH_SCARED(13, 30, 8, 0, TOT);
}

