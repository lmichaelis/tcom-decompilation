instance BAU_11193_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 11193;
    VOICE = 28;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_11193_FARMER, 14);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_11193_FARMER, MALE, HUMHEADBALD, FACE_N_FARMER50, 1, 35572);
    MDL_APPLYOVERLAYMDS(BAU_11193_FARMER, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_11193_FARMER);
    B_GIVENPCTALENTS(BAU_11193_FARMER);
    B_SETFIGHTSKILLS(BAU_11193_FARMER, 25);
    DAILY_ROUTINE = RTN_START_11193;
    AIVAR[74] = NPC_VINEYARD_IAMFROMVALERIO;
    AIVAR[70] = NPC_AMB_VALERIO;
}

func void RTN_START_11193() {
    TA_GRAPEPLUNDER(8, 0, 11, 20, "PART9_GRAPEFIELD_30");
    TA_GRAPEPLUNDER(11, 20, 14, 20, "PART9_GRAPEFIELD_31");
    TA_GRAPEPLUNDER(14, 20, 16, 20, "PART9_GRAPEFIELD_30");
    TA_STOMP_HERB(16, 20, 19, 30, "PART9_VINEYARD_HERB_06");
    TA_LEAN(19, 30, 8, 0, "PART9_HOUSE_CAMPFIRE_06");
}

func void RTN_SQ225_FIGHT_WAIT_11193() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 14, 0, "PART9_VINEYARD_FIGHT_17");
    TA_STAYSTRAIGHT_NOIQ(14, 0, 8, 0, "PART9_VINEYARD_FIGHT_17");
}

func void RTN_SQ225_FIGHT_11193() {
    TA_SEARCH_ONLY_BIGFIGHT(8, 0, 14, 0, "PART9_VINEYARD_FIGHT_17");
    TA_SEARCH_ONLY_BIGFIGHT(14, 0, 8, 0, "PART9_VINEYARD_FIGHT_17");
}

func void RTN_SQ225_FLEE_11193() {
    TA_FLEE_NOIQ(8, 0, 14, 0, TOT);
    TA_FLEE_NOIQ(14, 0, 8, 0, TOT);
}

func void RTN_TOT_11193() {
    TA_GRAPEPLUNDER(8, 0, 14, 0, TOT);
    TA_GRAPEPLUNDER(14, 0, 8, 0, TOT);
}

