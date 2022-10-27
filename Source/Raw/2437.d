instance NONE_11218_MERCENARY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SOELDNER;
    GUILD = GIL_NONE;
    ID = 0x2bd2;
    VOICE = 71;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_11218_MERCENARY, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    ATTRIBUTE[1] = 1000;
    ATTRIBUTE[0] = 1000;
    AIVAR[52] = TRUE;
    B_SETNPCVISUAL(NONE_11218_MERCENARY, MALE, HUMHEADFATBALD, FACE_B_MERCENARY05, 3, 0x8a46);
    MDL_APPLYOVERLAYMDS(NONE_11218_MERCENARY, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_11218_MERCENARY);
    B_GIVENPCTALENTS(NONE_11218_MERCENARY);
    B_SETFIGHTSKILLS(NONE_11218_MERCENARY, 30);
    DAILY_ROUTINE = RTN_START_11218;
}

func void RTN_START_11218() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 16, 0, "PART9_VINEYARD_FIGHT_03");
    TA_STAYSTRAIGHT_NOIQ(16, 0, 8, 0, "PART9_VINEYARD_FIGHT_03");
}

func void RTN_SQ225_FIGHT_11218() {
    TA_SEARCH_ONLY_BIGFIGHT(8, 0, 11, 20, "PART9_VINEYARD_FIGHT_03");
    TA_SEARCH_ONLY_BIGFIGHT(11, 20, 8, 0, "PART9_VINEYARD_FIGHT_03");
}

func void RTN_TOT_11218() {
    TA_STAND_EATING(8, 0, 11, 20, TOT);
    TA_STAND_EATING(11, 20, 8, 0, TOT);
}

