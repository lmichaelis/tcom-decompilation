instance NONE_2280_FISHERMAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_FISHERMAN;
    GUILD = GIL_NONE;
    ID = 2280;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_2280_FISHERMAN, 11);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NONE_2280_FISHERMAN, MALE, HUMHEADPSIONIC, FACE_N_FISHERMAN01, 1, 35395);
    MDL_APPLYOVERLAYMDS(NONE_2280_FISHERMAN, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_2280_FISHERMAN);
    B_GIVENPCTALENTS(NONE_2280_FISHERMAN);
    B_SETFIGHTSKILLS(NONE_2280_FISHERMAN, 30);
    DAILY_ROUTINE = RTN_START_2280;
    AIVAR[74] = NPC_PART1_IAMFISHERMAN;
    AIVAR[70] = NPC_AMB_FISHERMANS;
}

func void RTN_START_2280() {
    TA_STUDY_WP(7, 0, 13, 0, "PART1_FISHERCAMP_02");
    TA_SMALLTALK(13, 0, 15, 0, "PART1_FISHERCAMP_23");
    TA_COOK_PAN(15, 0, 17, 0, "PART1_FISHERCAMP_20");
    TA_STAND_EATING(17, 0, 19, 0, "PART1_FISHERCAMP_06");
    TA_STAND_DRINKING(19, 0, 21, 0, "PART1_FISHERCAMP_06");
    TA_SLEEP(21, 0, 7, 0, "PART1_FISHERCAMP_18");
}

func void RTN_TOT_2280() {
    TA_STAND_EATING(7, 0, 13, 0, TOT);
    TA_STAND_EATING(13, 0, 7, 0, TOT);
}

