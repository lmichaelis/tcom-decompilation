instance BAU_11300_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 0x2c24;
    VOICE = 59;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_11300_FARMER, 10);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_11300_FARMER, MALE, HUMHEADWITHOUTPONY, FACE_N_FARMER61, 1, 0x8472);
    MDL_APPLYOVERLAYMDS(BAU_11300_FARMER, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_11300_FARMER);
    B_GIVENPCTALENTS(BAU_11300_FARMER);
    B_SETFIGHTSKILLS(BAU_11300_FARMER, 60);
    DAILY_ROUTINE = RTN_START_11300;
}

func void RTN_START_11300() {
    TA_SEARCH(8, 0, 13, 0, "VILLAGE_HOUSE_01_STOVE");
    TA_SEARCH(13, 0, 8, 0, "VILLAGE_HOUSE_01_STOVE");
}

func void RTN_WAITING_11300() {
    TA_STAYSTRAIGHT(8, 0, 13, 0, "VILLAGE_PATH_05");
    TA_STAYSTRAIGHT(13, 0, 8, 0, "VILLAGE_PATH_05");
}

func void RTN_TOT_11300() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}
