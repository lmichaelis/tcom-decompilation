instance BAU_11198_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 0x2bbe;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_11198_FARMER, 11);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_11198_FARMER, MALE, HUMHEADBALD, FACE_B_FARMER55, 3, 0x8472);
    MDL_APPLYOVERLAYMDS(BAU_11198_FARMER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_11198_FARMER);
    B_GIVENPCTALENTS(BAU_11198_FARMER);
    B_SETFIGHTSKILLS(BAU_11198_FARMER, 25);
    DAILY_ROUTINE = RTN_START_11198;
    AIVAR[74] = NPC_VINEYARD_IAMFROMVALERIO;
    AIVAR[70] = NPC_AMB_VALERIO;
}

func void RTN_START_11198() {
    TA_SCYTHE(8, 0, 11, 20, "PART9_VINEYARD_FIELD_05");
    TA_SCYTHE(11, 20, 15, 0, "PART9_VINEYARD_FIELD_03");
    TA_SMALLTALK(15, 0, 19, 0, "PART9_CUTSCENE_LUTZ_01");
    TA_SIT_BED_TIRED(19, 0, 21, 0, "PART9_HOUSE01_06_BED");
    TA_STAND_EATING(21, 0, 8, 0, "PART9_VINEYARD_STAND_03");
}

func void RTN_TOT_11198() {
    TA_SCYTHE(8, 0, 11, 20, TOT);
    TA_SCYTHE(11, 20, 8, 0, TOT);
}

