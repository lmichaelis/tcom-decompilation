instance VLK_10033_SAILORCROOK(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SAILOR;
    GUILD = GIL_VLK;
    ID = 10033;
    VOICE = 17;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_10033_SAILORCROOK, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_10033_SAILORCROOK, MALE, HUMHEADFATBALD, FACE_N_SAILORCROOK, 1, 35395);
    MDL_APPLYOVERLAYMDS(VLK_10033_SAILORCROOK, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_10033_SAILORCROOK);
    B_GIVENPCTALENTS(VLK_10033_SAILORCROOK);
    B_SETFIGHTSKILLS(VLK_10033_SAILORCROOK, 45);
    DAILY_ROUTINE = RTN_START_10033;
}

func void RTN_START_10033() {
    TA_STAND_WP(7, 0, 10, 0, "HARBOUR_PATH_104");
    TA_STAND_WP(10, 0, 7, 0, "HARBOUR_PATH_104");
}

func void RTN_AWAY_10033() {
    TA_STAND_WP(7, 0, 10, 0, "SLUMS_PATH_184");
    TA_STAND_WP(10, 0, 7, 0, "SLUMS_PATH_184");
}

func void RTN_TOT_10033() {
    TA_STAND_WP(7, 0, 10, 0, TOT);
    TA_STAND_WP(10, 0, 7, 0, TOT);
}

