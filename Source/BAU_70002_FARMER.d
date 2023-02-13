instance BAU_70002_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAEUERIN;
    GUILD = GIL_BAU;
    ID = 70002;
    VOICE = 32;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_70002_FARMER, 14);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BAU_70002_FARMER, FEMALE, HUMHEADBABE1, FACE_WL_CITIZEN130, 6, 35603);
    MDL_APPLYOVERLAYMDS(BAU_70002_FARMER, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_70002_FARMER);
    B_GIVENPCTALENTS(BAU_70002_FARMER);
    B_SETFIGHTSKILLS(BAU_70002_FARMER, 30);
    DAILY_ROUTINE = RTN_START_70002;
    AIVAR[70] = NPC_AMB_RITA;
}

func void RTN_START_70002() {
    TA_COUNTING(6, 0, 20, 0, "PART15_VINEYARD_PLUNDER_01");
    TA_COUNTING(20, 0, 6, 0, TOT2);
}

