instance NONE_13517_DANIEL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_DANIEL;
    GUILD = GIL_NONE;
    ID = 0x34cd;
    VOICE = 46;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13517_DANIEL, 60);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETNPCVISUAL(NONE_13517_DANIEL, MALE, HUMHEADWITHOUTPONY, FACE_N_DANIEL, 1, 0x8ab6);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13517_DANIEL);
    B_GIVENPCTALENTS(NONE_13517_DANIEL);
    B_SETFIGHTSKILLS(NONE_13517_DANIEL, 45);
    DAILY_ROUTINE = RTN_START_13517;
}

func void RTN_START_13517() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, "PART2_PATH_11");
    TA_STAYSTRAIGHT(6, 0, 1, 0, "PART2_PATH_11");
}

func void RTN_QM401_VIENYARD_WAIT_13517() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 9, 0, "PART2_PATH_11");
    TA_STAYSTRAIGHT_NOIQ(9, 0, 8, 0, "PART2_PATH_11");
}

func void RTN_QM401_VIENYARD_WALK_13517() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 9, 0, "PART9_PATH_72");
    TA_STAYSTRAIGHT_NOIQ(9, 0, 8, 0, "PART9_PATH_72");
}

func void RTN_QM401_VIENYARD_FIGHT_13517() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART9_QM401_FIGHTSPOT_03");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART9_QM401_FIGHTSPOT_03");
}

func void RTN_QM401_VIENYARD_TIRED_13517() {
    TA_BREATH(8, 0, 9, 0, "PART9_QM401_FIGHTSPOT_03");
    TA_BREATH(9, 0, 8, 0, "PART9_QM401_FIGHTSPOT_03");
}

func void RTN_CITY_13517() {
    TA_LEAN(8, 0, 15, 33, "PARTM3_PATH_220");
    TA_STAND_EATING(15, 33, 19, 45, "PARTM3_STAND_DANIEL");
    TA_STAND_EATING(19, 45, 8, 0, "PARTM4_TAVERN_20");
}
