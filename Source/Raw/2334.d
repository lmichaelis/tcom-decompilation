instance NONE_6269_DANIEL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_DANIEL;
    GUILD = GIL_NONE;
    ID = 0x187d;
    VOICE = 46;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[52] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETATTRIBUTESTOLEVEL(NONE_6269_DANIEL, 3);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    MDL_SETVISUAL(NONE_6269_DANIEL, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_6269_DANIEL, HUMBODYNAKED0, 20, 0, HUMHEADWITHOUTPONY, FACE_N_DANIEL_HURT, 5, 0x8a41);
    B_CREATEAMBIENTINV(NONE_6269_DANIEL);
    B_GIVENPCTALENTS(NONE_6269_DANIEL);
    B_SETFIGHTSKILLS(NONE_6269_DANIEL, 45);
    DAILY_ROUTINE = RTN_START_6269;
}

func void RTN_START_6269() {
    TA_SIT_TIRED_DANIEL(8, 0, 9, 0, "PART7_CAVE_DANIEL");
    TA_SIT_TIRED_DANIEL(9, 0, 8, 0, "PART7_CAVE_DANIEL");
}

func void RTN_TOT_6269() {
    TA_SIT_TIRED_DANIEL(8, 0, 9, 0, TOT2);
    TA_SIT_TIRED_DANIEL(9, 0, 8, 0, TOT2);
}

func void RTN_QM401_VIENYARD_WAIT_6269() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 9, 0, "PART2_PATH_11");
    TA_STAYSTRAIGHT_NOIQ(9, 0, 8, 0, "PART2_PATH_11");
}

func void RTN_QM401_VIENYARD_WALK_6269() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 9, 0, "PART9_PATH_72");
    TA_STAYSTRAIGHT_NOIQ(9, 0, 8, 0, "PART9_PATH_72");
}

func void RTN_QM401_VIENYARD_FIGHT_6269() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART9_QM401_FIGHTSPOT_03");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART9_QM401_FIGHTSPOT_03");
}

func void RTN_QM401_VIENYARD_TIRED_6269() {
    TA_BREATH(8, 0, 9, 0, "PART9_QM401_FIGHTSPOT_03");
    TA_BREATH(9, 0, 8, 0, "PART9_QM401_FIGHTSPOT_03");
}
