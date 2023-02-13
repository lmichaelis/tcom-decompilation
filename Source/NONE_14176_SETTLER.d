instance NONE_14176_SETTLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_FEMALESETTLER;
    GUILD = GIL_NONE;
    ID = 14176;
    VOICE = 33;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_14176_SETTLER, 10);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_14176_SETTLER, FEMALE, HUMHEADIVY, FACE_WN_FSETTLER01, 5, 35604);
    MDL_APPLYOVERLAYMDS(NONE_14176_SETTLER, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_14176_SETTLER);
    B_GIVENPCTALENTS(NONE_14176_SETTLER);
    B_SETFIGHTSKILLS(NONE_14176_SETTLER, 60);
    DAILY_ROUTINE = RTN_START_14176;
    AIVAR[74] = NPC_PART1_IAMFISHERMAN;
    AIVAR[70] = NPC_AMB_FISHERMANS;
}

func void RTN_START_14176() {
    TA_STAND_EATING(6, 0, 8, 0, "PART1_FISHERCAMP_94");
    TA_STAND_DRINKING(8, 0, 13, 0, "PART1_FISHERCAMP_94");
    TA_STAND_ARMSCROSSED(13, 0, 16, 0, "PART1_FISHERCAMP_94");
    TA_STAND_EATING(16, 0, 18, 0, "PART1_FISHERCAMP_94");
    TA_STAND_DRINKING(18, 0, 20, 0, "PART1_FISHERCAMP_94");
    TA_STAND_ARMSCROSSED(20, 0, 21, 0, "PART1_FISHERCAMP_94");
    TA_SIT_CAMPFIRE(21, 0, 6, 0, "PART1_FISHER_BEACH_91");
}

func void RTN_TOT_14176() {
    TA_STAND_EATING(6, 0, 8, 0, TOT);
    TA_STAND_DRINKING(8, 0, 6, 0, TOT);
}

