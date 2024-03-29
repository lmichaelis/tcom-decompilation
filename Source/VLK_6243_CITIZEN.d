instance VLK_6243_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WORRIEDFEMALECITIZEN;
    GUILD = GIL_VLK;
    ID = 6243;
    VOICE = 69;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6243_CITIZEN, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6243_CITIZEN, FEMALE, HUMHEADBABE1, FACE_WN_CITIZEN01, 5, 33912);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6243_CITIZEN);
    B_GIVENPCTALENTS(VLK_6243_CITIZEN);
    B_SETFIGHTSKILLS(VLK_6243_CITIZEN, 35);
    DAILY_ROUTINE = RTN_START_6243;
}

func void RTN_START_6243() {
    TA_REFUSE_BLANKA(8, 0, 18, 0, "PARTM1_GUILD_SMALLTALK_01");
    TA_REFUSE_BLANKA(18, 0, 8, 0, "PARTM1_GUILD_SMALLTALK_01");
}

func void RTN_TOT_6243() {
    TA_IDLE(8, 0, 18, 0, TOT);
    TA_IDLE(18, 0, 8, 0, TOT);
}

