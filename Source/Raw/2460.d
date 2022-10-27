instance BAU_11184_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 0x2bb0;
    VOICE = 59;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_11184_FARMER, 12);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_11184_FARMER, MALE, HUMHEADBALD, FACE_L_FARMER42, 2, 0x8473);
    MDL_APPLYOVERLAYMDS(BAU_11184_FARMER, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_11184_FARMER);
    B_GIVENPCTALENTS(BAU_11184_FARMER);
    B_SETFIGHTSKILLS(BAU_11184_FARMER, 30);
    DAILY_ROUTINE = RTN_START_11184;
    AIVAR[74] = NPC_VINEYARD_IAMFROMVALERIO;
    AIVAR[70] = NPC_AMB_VALERIO;
}

func void RTN_START_11184() {
    TA_GRAPEPLUNDER(8, 0, 16, 30, "PART9_GRAPEFIELD_81");
    TA_STAND_EATING(16, 30, 21, 30, "PART9_VINEYARD_STAND_01");
    TA_SIT_CHAIR(21, 30, 8, 0, "PART9_HOUSE02_06_CHAIR");
}

func void RTN_SQ225_FIGHT_WAIT_11184() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 14, 0, "PART9_VINEYARD_FIGHT_08");
    TA_STAYSTRAIGHT_NOIQ(14, 0, 8, 0, "PART9_VINEYARD_FIGHT_08");
}

func void RTN_SQ225_FIGHT_11184() {
    TA_SEARCH_ONLY_BIGFIGHT(8, 0, 14, 0, "PART9_VINEYARD_FIGHT_08");
    TA_SEARCH_ONLY_BIGFIGHT(14, 0, 8, 0, "PART9_VINEYARD_FIGHT_08");
}

func void RTN_SQ225_FLEE_11184() {
    TA_FLEE_NOIQ(8, 0, 14, 0, TOT);
    TA_FLEE_NOIQ(14, 0, 8, 0, TOT);
}

func void RTN_TOT_11184() {
    TA_GRAPEPLUNDER(8, 0, 14, 0, TOT);
    TA_GRAPEPLUNDER(14, 0, 8, 0, TOT);
}

