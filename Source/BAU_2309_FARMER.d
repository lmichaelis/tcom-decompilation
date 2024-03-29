instance BAU_2309_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 2309;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_2309_FARMER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_2309_FARMER, MALE, HUMHEADBALD, FACE_P_FARMER75, 0, 33906);
    MDL_APPLYOVERLAYMDS(BAU_2309_FARMER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_2309_FARMER);
    B_GIVENPCTALENTS(BAU_2309_FARMER);
    B_SETFIGHTSKILLS(BAU_2309_FARMER, 30);
    DAILY_ROUTINE = RTN_START_2309;
    AIVAR[74] = NPC_VINEYARD_IAMFROMGASPAR;
    AIVAR[70] = NPC_AMB_RITA;
}

func void RTN_START_2309() {
    TA_REPAIR_HUT(7, 0, 20, 30, "PART15_VINEYARD_REPAIR_01");
    TA_DRINKBARREL(20, 30, 7, 0, "PART15_VINEYARD_WATER_01");
}

