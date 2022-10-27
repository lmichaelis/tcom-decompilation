instance BAU_11192_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 0x2bb8;
    VOICE = 59;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_11192_FARMER, 11);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_11192_FARMER, MALE, HUMHEADPONY, FACE_P_FARMER49, 0, 0x8473);
    MDL_APPLYOVERLAYMDS(BAU_11192_FARMER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_11192_FARMER);
    B_GIVENPCTALENTS(BAU_11192_FARMER);
    B_SETFIGHTSKILLS(BAU_11192_FARMER, 25);
    DAILY_ROUTINE = RTN_START_11192;
    AIVAR[74] = NPC_VINEYARD_IAMFROMVALERIO;
    AIVAR[70] = NPC_AMB_VALERIO;
}

func void RTN_START_11192() {
    TA_SMALLTALK(8, 0, 9, 50, "PART9_VINEYARD_SMALLTALK_04");
    TA_SIT_CHAIR_DRINK(9, 50, 16, 0, "PART9_VINEYARD_CHAIR_03");
    TA_STAND_EATING(16, 0, 20, 0, "PART9_VINEYARD_STAND_05");
    TA_SIT_CHAIR_DRINK(20, 0, 8, 0, "PART9_VINEYARD_CHAIR_02");
}

func void RTN_SQ225_FIGHT_WAIT_11192() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 14, 0, "PART9_VINEYARD_FIGHT_16");
    TA_STAYSTRAIGHT_NOIQ(14, 0, 8, 0, "PART9_VINEYARD_FIGHT_16");
}

func void RTN_SQ225_FIGHT_11192() {
    TA_SEARCH_ONLY_BIGFIGHT(8, 0, 14, 0, "PART9_VINEYARD_FIGHT_16");
    TA_SEARCH_ONLY_BIGFIGHT(14, 0, 8, 0, "PART9_VINEYARD_FIGHT_16");
}

func void RTN_SQ225_FLEE_11192() {
    TA_FLEE_NOIQ(8, 0, 14, 0, TOT);
    TA_FLEE_NOIQ(14, 0, 8, 0, TOT);
}

func void RTN_TOT_11192() {
    TA_GRAPEPLUNDER(8, 0, 14, 0, TOT);
    TA_GRAPEPLUNDER(14, 0, 8, 0, TOT);
}

