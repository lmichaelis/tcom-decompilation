instance BAU_11190_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 0x2bb6;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_11190_FARMER, 13);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_11190_FARMER, MALE, HUMHEADBALD, FACE_N_FARMER47, 1, 0x8473);
    MDL_APPLYOVERLAYMDS(BAU_11190_FARMER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_11190_FARMER);
    B_GIVENPCTALENTS(BAU_11190_FARMER);
    B_SETFIGHTSKILLS(BAU_11190_FARMER, 25);
    DAILY_ROUTINE = RTN_START_11190;
    AIVAR[74] = NPC_VINEYARD_IAMFROMVALERIO;
    AIVAR[70] = NPC_AMB_VALERIO;
}

func void RTN_START_11190() {
    TA_STOMP_HERB(8, 0, 10, 20, "PART9_VINEYARD_HERB_04");
    TA_STOMP_HERB(10, 20, 15, 10, "PART9_VINEYARD_HERB_06");
    TA_SCYTHE(15, 10, 18, 40, "PART9_VINEYARD_FIELD_03");
    TA_STAND_DRINKING(18, 40, 8, 0, "PART9_VINEYARD_11");
}

func void RTN_SQ225_PLUNDER_11190() {
    TA_PLUNDER(8, 0, 20, 0, "PART9_SQ225_PLUNDER");
    TA_STAND_DRINKING(20, 0, 8, 0, "PART9_VINEYARD_11");
}

func void RTN_SQ225_FIGHT_WAIT_11190() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 14, 0, "PART9_VINEYARD_FIGHT_14");
    TA_STAYSTRAIGHT_NOIQ(14, 0, 8, 0, "PART9_VINEYARD_FIGHT_14");
}

func void RTN_SQ225_FIGHT_11190() {
    TA_SEARCH_ONLY_BIGFIGHT(8, 0, 14, 0, "PART9_VINEYARD_FIGHT_14");
    TA_SEARCH_ONLY_BIGFIGHT(14, 0, 8, 0, "PART9_VINEYARD_FIGHT_14");
}

func void RTN_SQ225_HELPHOLDWIG_11190() {
    TA_RUNTOWP(8, 0, 14, 0, "PART9_VINEYARD_BED_HOLDWIG");
    TA_RUNTOWP(14, 0, 8, 0, "PART9_VINEYARD_BED_HOLDWIG");
}

func void RTN_TOT_11190() {
    TA_GRAPEPLUNDER(8, 0, 14, 0, TOT);
    TA_GRAPEPLUNDER(14, 0, 8, 0, TOT);
}

