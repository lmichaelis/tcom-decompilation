instance VLK_6244_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ADMIRER;
    GUILD = GIL_VLK;
    ID = 0x1864;
    VOICE = 58;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6244_CITIZEN, 10);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6244_CITIZEN, MALE, HUMHEADWITHOUTPONY, FACE_N_CITIZEN02, 1, 0x8ad7);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6244_CITIZEN);
    B_GIVENPCTALENTS(VLK_6244_CITIZEN);
    B_SETFIGHTSKILLS(VLK_6244_CITIZEN, 40);
    DAILY_ROUTINE = RTN_START_6244;
}

func void RTN_START_6244() {
    TA_IDLE(8, 0, 18, 0, "PARTM1_GUILD_SMALLTALK_02");
    TA_IDLE(18, 0, 8, 0, "PARTM1_GUILD_SMALLTALK_02");
}

func void RTN_TOT_6244() {
    TA_IDLE(8, 0, 18, 0, TOT);
    TA_IDLE(18, 0, 8, 0, TOT);
}

