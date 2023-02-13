instance BAU_11032_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAEUERIN;
    GUILD = GIL_BAU;
    ID = 11032;
    VOICE = 69;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_11032_FARMER, 3);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BAU_11032_FARMER, FEMALE, HUMHEADBABE5, FACE_WN_FARMER17, 5, 35605);
    MDL_APPLYOVERLAYMDS(BAU_11032_FARMER, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_11032_FARMER);
    B_GIVENPCTALENTS(BAU_11032_FARMER);
    B_SETFIGHTSKILLS(BAU_11032_FARMER, 10);
    DAILY_ROUTINE = RTN_START_11032;
    AIVAR[74] = NPC_SILBACH_IAMFARMER;
    AIVAR[70] = NPC_AMB_SILBACH;
}

func void RTN_START_11032() {
    TA_COOK_STOVE(8, 0, 13, 0, "VILLAGE_HOUSE_05_STOVE");
    TA_RAKE_FP(13, 0, 16, 0, "VILLAGE_PATH_119");
    TA_BRUSH_FLOOR(16, 0, 18, 0, "VILLAGE_HOUSE_05_PATH03");
    TA_COOK_STOVE(18, 0, 21, 0, "VILLAGE_HOUSE_05_STOVE");
    TA_SLEEP(21, 0, 8, 0, "VILLAGE_HOUSE_05_BED02");
}

func void RTN_SQ202_11032() {
    TA_LAUGH(6, 0, 8, 0, "VILLAGE_TRAINFARMER_01");
    TA_LAUGH(8, 0, 6, 0, "VILLAGE_TRAINFARMER_01");
}

func void RTN_TOT_11032() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}
