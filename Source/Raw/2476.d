instance BAU_11202_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 0x2bc2;
    VOICE = 59;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_11202_FARMER, 12);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_11202_FARMER, MALE, HUMHEADPONY, FACE_N_FARMER57, 1, 0x8472);
    MDL_APPLYOVERLAYMDS(BAU_11202_FARMER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_11202_FARMER);
    B_GIVENPCTALENTS(BAU_11202_FARMER);
    B_SETFIGHTSKILLS(BAU_11202_FARMER, 25);
    DAILY_ROUTINE = RTN_START_11202;
    AIVAR[74] = NPC_VINEYARD_IAMFROMVALERIO;
    AIVAR[70] = NPC_AMB_VALERIO;
}

func void RTN_START_11202() {
    TA_SCYTHE(7, 0, 13, 42, "PART9_VINEYARD_FIELD_07");
    TA_PLUNDER(13, 42, 16, 10, "PART9_VINEYARD_PLUNDER_02");
    TA_SIT_BED_TIRED(16, 10, 20, 44, "PART9_HOUSE01_03_BED");
    TA_STAND_EATING(20, 44, 7, 0, "PART9_VINEYARD_STAND_07");
}

func void RTN_TOT_11202() {
    TA_SCYTHE(8, 0, 11, 20, TOT);
    TA_SCYTHE(11, 20, 8, 0, TOT);
}

