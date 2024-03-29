instance BAU_2267_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 2267;
    VOICE = 13;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_2267_FARMER, 14);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_2267_FARMER, MALE, HUMHEADBALD, FACE_N_FARMER32, 1, 33907);
    MDL_APPLYOVERLAYMDS(BAU_2267_FARMER, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_2267_FARMER);
    B_GIVENPCTALENTS(BAU_2267_FARMER);
    B_SETFIGHTSKILLS(BAU_2267_FARMER, 30);
    DAILY_ROUTINE = RTN_START_2267;
}

func void RTN_START_2267() {
    TA_PICK_FP(8, 0, 14, 0, "PART9_ORCHARD_09");
    TA_PICK_FP(14, 0, 16, 0, "PART9_ORCHARD_11");
    TA_PICK_FP(16, 0, 18, 0, "PART9_ORCHARD_13");
    TA_ROAST_SCAVENGER(18, 0, 22, 30, "PART9_VINEYARD_BARBQ_01");
    TA_SIT_CHAIR(22, 30, 8, 0, "PART9_HOUSE01_05_CHAIR");
}

func void RTN_SQ225_FIGHT_WAIT_2267() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 14, 0, "PART9_VINEYARD_FIGHT_04");
    TA_STAYSTRAIGHT_NOIQ(14, 0, 8, 0, "PART9_VINEYARD_FIGHT_04");
}

func void RTN_SQ225_FIGHT_2267() {
    TA_SEARCH_ONLY_BIGFIGHT(8, 0, 14, 0, "PART9_VINEYARD_FIGHT_04");
    TA_SEARCH_ONLY_BIGFIGHT(14, 0, 8, 0, "PART9_VINEYARD_FIGHT_04");
}

func void RTN_SQ225_FLEE_2267() {
    TA_FLEE_NOIQ(8, 0, 14, 0, TOT);
    TA_FLEE_NOIQ(14, 0, 8, 0, TOT);
}

func void RTN_TOT_2267() {
    TA_GRAPEPLUNDER(8, 0, 14, 0, TOT);
    TA_GRAPEPLUNDER(14, 0, 8, 0, TOT);
}

