instance BAU_11016_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 11016;
    VOICE = 14;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_11016_FARMER, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BAU_11016_FARMER, MALE, HUMHEADTHIEF, FACE_N_FARMER14, 1, 33906);
    MDL_APPLYOVERLAYMDS(BAU_11016_FARMER, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_11016_FARMER);
    B_GIVENPCTALENTS(BAU_11016_FARMER);
    B_SETFIGHTSKILLS(BAU_11016_FARMER, 5);
    DAILY_ROUTINE = RTN_START_11016;
    AIVAR[74] = NPC_SILBACH_IAMFARMER;
}

func void RTN_START_11016() {
    TA_SCYTHE(8, 0, 14, 0, "VILLAGE_FARMLAND_07");
    TA_COOK_PAN(14, 0, 16, 0, "VILLAGE_PATH_110");
    TA_SAW(16, 0, 17, 0, "VILLAGE_PATH_117");
    TA_SIT_THRONE(17, 0, 18, 0, "VILLAGE_HOUSE_05_THRONE01");
    TA_SIT_CHAIR_EAT(18, 0, 20, 0, "VILLAGE_HOUSE_05_CHAIR01");
    TA_SLEEP(20, 0, 8, 0, "VILLAGE_HOUSE_05_BED01");
}

func void RTN_SQ221_WAIT_11016() {
    TA_SIT_SLAVSQUAT(8, 0, 14, 0, "PART13_SQ221_SALERS");
    TA_SIT_SLAVSQUAT(14, 0, 8, 0, "PART13_SQ221_SALERS");
}

func void RTN_TOT_11016() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}

