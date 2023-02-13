instance BAU_2304_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 2304;
    VOICE = 59;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_2304_FARMER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_2304_FARMER, MALE, HUMHEADBALD, FACE_N_FARMER71, 1, 35579);
    MDL_APPLYOVERLAYMDS(BAU_2304_FARMER, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_2304_FARMER);
    B_GIVENPCTALENTS(BAU_2304_FARMER);
    B_SETFIGHTSKILLS(BAU_2304_FARMER, 30);
    DAILY_ROUTINE = RTN_START_2304;
    AIVAR[74] = NPC_VINEYARD_IAMFROMGASPAR;
    AIVAR[70] = NPC_AMB_RITA;
}

func void RTN_START_2304() {
    TA_GRAPEPLUNDER(7, 0, 10, 0, "PART15_GRAPEFIELD_28");
    TA_PLUNDER(10, 0, 12, 55, "PART15_VINEYARD_PLUNDER_02");
    TA_PLUNDER(12, 55, 15, 0, "PART15_VINEYARD_PLUNDER_03");
    TA_GRAPEPLUNDER(15, 0, 22, 0, "PART15_GRAPEFIELD_18");
    TA_SLEEP(22, 0, 7, 0, "PART15_VINEYARD_HOUSE1_BED_03");
}
