instance BAU_11186_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 11186;
    VOICE = 64;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_11186_FARMER, 13);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_11186_FARMER, MALE, HUMHEADWITHOUTPONY, FACE_N_FARMER43, 1, 33907);
    MDL_APPLYOVERLAYMDS(BAU_11186_FARMER, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_11186_FARMER);
    B_GIVENPCTALENTS(BAU_11186_FARMER);
    B_SETFIGHTSKILLS(BAU_11186_FARMER, 25);
    DAILY_ROUTINE = RTN_START_11186;
    AIVAR[74] = NPC_VINEYARD_IAMFROMVALERIO;
    AIVAR[70] = NPC_AMB_VALERIO;
}

func void RTN_START_11186() {
    TA_GRAPEPLUNDER(8, 0, 16, 0, "PART9_GRAPEFIELD_86");
    TA_SIT_CASUAL(16, 0, 22, 0, "PART9_GRAPEFIELD_79");
    TA_STAND_DRINKING(22, 0, 8, 0, "PART9_HOUSE_CAMPFIRE_03");
}

func void RTN_SQ225_FIGHT_WAIT_11186() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 14, 0, "PART9_VINEYARD_FIGHT_10");
    TA_STAYSTRAIGHT_NOIQ(14, 0, 8, 0, "PART9_VINEYARD_FIGHT_10");
}

func void RTN_SQ225_FIGHT_11186() {
    TA_SEARCH_ONLY_BIGFIGHT(8, 0, 14, 0, "PART9_VINEYARD_FIGHT_10");
    TA_SEARCH_ONLY_BIGFIGHT(14, 0, 8, 0, "PART9_VINEYARD_FIGHT_10");
}

func void RTN_SQ225_HELPHOLDWIG_11186() {
    TA_RUNTOWP(8, 0, 14, 0, "PART9_VINEYARD_52");
    TA_RUNTOWP(14, 0, 8, 0, "PART9_VINEYARD_52");
}

func void RTN_TOT_11186() {
    TA_GRAPEPLUNDER(8, 0, 14, 0, TOT);
    TA_GRAPEPLUNDER(14, 0, 8, 0, TOT);
}

