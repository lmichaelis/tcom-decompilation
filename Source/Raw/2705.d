instance BAU_2302_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAEUERIN;
    GUILD = GIL_BAU;
    ID = 0x8fe;
    VOICE = 32;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_2302_FARMER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_2302_FARMER, FEMALE, HUMHEADBABE3, FACE_WN_FARMER83, 5, 0x8b18);
    MDL_APPLYOVERLAYMDS(BAU_2302_FARMER, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_2302_FARMER);
    B_GIVENPCTALENTS(BAU_2302_FARMER);
    B_SETFIGHTSKILLS(BAU_2302_FARMER, 30);
    DAILY_ROUTINE = RTN_START_2302;
    AIVAR[74] = NPC_VINEYARD_IAMFROMGASPAR;
    AIVAR[70] = NPC_AMB_RITA;
}

func void RTN_START_2302() {
    TA_GRAPEPLUNDER(7, 0, 10, 0, "PART15_GRAPEFIELD_15");
    TA_GRAPEPLUNDER(10, 0, 15, 0, "PART15_GRAPEFIELD_43");
    TA_GRAPEPLUNDER(15, 0, 22, 0, "PART15_GRAPEFIELD_23");
    TA_SLEEP(22, 0, 7, 0, "PART15_VINEYARD_HOUSE1_BED_01");
}

