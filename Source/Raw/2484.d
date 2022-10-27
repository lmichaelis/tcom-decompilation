instance BAU_2268_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 0x8dc;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_2268_FARMER, 13);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_2268_FARMER, MALE, HUMHEADFATBALD, FACE_B_FARMER33, 3, 0x8472);
    MDL_APPLYOVERLAYMDS(BAU_2268_FARMER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_2268_FARMER);
    B_GIVENPCTALENTS(BAU_2268_FARMER);
    B_SETFIGHTSKILLS(BAU_2268_FARMER, 30);
    DAILY_ROUTINE = RTN_START_2268;
    AIVAR[74] = NPC_VINEYARD_IAMFROMVALERIO;
    AIVAR[70] = NPC_AMB_VALERIO;
}

func void RTN_START_2268() {
    TA_PICK_FP(8, 0, 14, 0, "PART9_ORCHARD_17");
    TA_PICK_FP(14, 0, 16, 0, "PART9_ORCHARD_18");
    TA_PICK_FP(16, 0, 18, 0, "PART9_ORCHARD_04");
    TA_SMALLTALK(18, 0, 21, 0, "PART9_VINEYARD_SMALLTALK_01");
    TA_SLEEP(21, 0, 8, 0, "PART9_HOUSE01_03_BED");
}

func void RTN_SQ225_FIGHT_WAIT_2268() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 14, 0, "PART9_VINEYARD_FIGHT_05");
    TA_STAYSTRAIGHT_NOIQ(14, 0, 8, 0, "PART9_VINEYARD_FIGHT_05");
}

func void RTN_SQ225_FIGHT_2268() {
    TA_SEARCH_ONLY_BIGFIGHT(8, 0, 14, 0, "PART9_VINEYARD_FIGHT_05");
    TA_SEARCH_ONLY_BIGFIGHT(14, 0, 8, 0, "PART9_VINEYARD_FIGHT_05");
}

func void RTN_SQ225_FLEE_2268() {
    TA_FLEE_NOIQ(8, 0, 14, 0, TOT);
    TA_FLEE_NOIQ(14, 0, 8, 0, TOT);
}

func void RTN_TOT_2268() {
    TA_GRAPEPLUNDER(8, 0, 14, 0, TOT);
    TA_GRAPEPLUNDER(14, 0, 8, 0, TOT);
}
