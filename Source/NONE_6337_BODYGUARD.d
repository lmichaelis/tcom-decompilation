instance NONE_6337_BODYGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BODYGUARD;
    GUILD = GIL_NONE;
    ID = 6337;
    VOICE = 70;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6337_BODYGUARD, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETNPCVISUAL(NONE_6337_BODYGUARD, MALE, HUMHEADFATBALD, FACE_N_BODYGUARD_02, 1, 35438);
    MDL_APPLYOVERLAYMDS(NONE_6337_BODYGUARD, HUMANSMILITIAMDS);
    EQUIPITEM(NONE_6337_BODYGUARD, 34115);
    B_CREATEAMBIENTINV(NONE_6337_BODYGUARD);
    B_GIVENPCTALENTS(NONE_6337_BODYGUARD);
    B_SETFIGHTSKILLS(NONE_6337_BODYGUARD, 45);
    DAILY_ROUTINE = RTN_START_6337;
}

func void RTN_START_6337() {
    TA_LEAN(1, 0, 6, 0, "PART17_CAVE_BODYGOUARD_04");
    TA_LEAN(6, 0, 1, 0, "PART17_CAVE_BODYGOUARD_04");
}

func void RTN_SMALLTALK_6337() {
    TA_SMALLTALK(1, 0, 6, 0, "PART17_CAVE_SMALLTALK_02");
    TA_SMALLTALK(6, 0, 1, 0, "PART17_CAVE_SMALLTALK_02");
}

func void RTN_PLUNDER_6337() {
    TA_PLUNDER(1, 0, 6, 0, "PART17_PATH_225");
    TA_PLUNDER(6, 0, 1, 0, "PART17_PATH_225");
}

func void RTN_TOT_6337() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, TOT);
    TA_STAYSTRAIGHT(6, 0, 1, 0, TOT);
}

func void RTN_FINALCUTSCENE_6337() {
    TA_STAYSTRAIGHT_DIALOGUE(1, 0, 6, 0, "PART17_CAVE_CUTSCENE_BODYGUARD_04");
    TA_STAYSTRAIGHT_DIALOGUE(6, 0, 1, 0, "PART17_CAVE_CUTSCENE_BODYGUARD_04");
}

func void RTN_CAVEFIGHT_6337() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, "PART17_CAVE_CUTSCENE_BODYGUARD_04");
    TA_STAYSTRAIGHT(6, 0, 1, 0, "PART17_CAVE_CUTSCENE_BODYGUARD_04");
}

func void RTN_QM401_VIENYARD_WAIT_6337() {
    TA_STAYSTRAIGHT_NOIQ(1, 0, 6, 0, "PART2_PATH_10");
    TA_STAYSTRAIGHT_NOIQ(6, 0, 1, 0, "PART2_PATH_10");
}

func void RTN_QM401_VIENYARD_WALK_6337() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 9, 0, "PART9_PATH_72");
    TA_STAYSTRAIGHT_NOIQ(9, 0, 8, 0, "PART9_PATH_72");
}

func void RTN_QM401_VIENYARD_FIGHT_6337() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART9_QM401_FIGHTSPOT_08");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART9_QM401_FIGHTSPOT_08");
}

