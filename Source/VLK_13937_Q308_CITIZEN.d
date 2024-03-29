instance VLK_13937_Q308_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 13937;
    VOICE = 59;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_13937_Q308_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_13937_Q308_CITIZEN, MALE, HUMHEADBALD, FACE_L_FARMER72, 2, 35542);
    MDL_APPLYOVERLAYMDS(VLK_13937_Q308_CITIZEN, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13937_Q308_CITIZEN);
    B_GIVENPCTALENTS(VLK_13937_Q308_CITIZEN);
    B_SETFIGHTSKILLS(VLK_13937_Q308_CITIZEN, 20);
    DAILY_ROUTINE = RTN_START_13937;
    AIVAR[74] = NPC_Q308_IAMCITIZENVOLKER;
}

func void RTN_START_13937() {
    TA_IDLE(8, 0, 22, 0, "PARTM4_PATH_101");
    TA_IDLE(22, 0, 8, 0, "PARTM4_PATH_101");
}

func void RTN_TOT_13937() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

