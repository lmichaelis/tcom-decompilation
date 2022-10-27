instance NONE_6339_BODYGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BODYGUARD;
    GUILD = GIL_NONE;
    ID = 0x18c3;
    VOICE = 60;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6339_BODYGUARD, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETNPCVISUAL(NONE_6339_BODYGUARD, MALE, HUMHEADBALD, FACE_B_BODYGUARD_04, 3, 0x8a6e);
    MDL_APPLYOVERLAYMDS(NONE_6339_BODYGUARD, HUMANSMILITIAMDS);
    EQUIPITEM(NONE_6339_BODYGUARD, 0x8674);
    CREATEINVITEMS(NONE_6339_BODYGUARD, 0x8650, 10);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6339_BODYGUARD);
    B_GIVENPCTALENTS(NONE_6339_BODYGUARD);
    B_SETFIGHTSKILLS(NONE_6339_BODYGUARD, 50);
    DAILY_ROUTINE = RTN_START_6339;
}

func void RTN_START_6339() {
    TA_STAND_ARMSCROSSED(1, 0, 6, 0, "PART17_CAVE_BODYGOUARD_03");
    TA_STAND_ARMSCROSSED(6, 0, 1, 0, "PART17_CAVE_BODYGOUARD_03");
}

func void RTN_PLUNDER_6339() {
    TA_PLUNDER(1, 0, 6, 0, "PART17_PATH_225");
    TA_PLUNDER(6, 0, 1, 0, "PART17_PATH_225");
}

func void RTN_TOT_6339() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, TOT);
    TA_STAYSTRAIGHT(6, 0, 1, 0, TOT);
}

func void RTN_FINALCUTSCENE_6339() {
    TA_STAYSTRAIGHT_DIALOGUE(1, 0, 6, 0, "PART17_CAVE_CUTSCENE_BODYGUARD_02");
    TA_STAYSTRAIGHT_DIALOGUE(6, 0, 1, 0, "PART17_CAVE_CUTSCENE_BODYGUARD_02");
}

func void RTN_CAVEFIGHT_6339() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, "PART17_CAVE_CUTSCENE_BODYGUARD_02");
    TA_STAYSTRAIGHT(6, 0, 1, 0, "PART17_CAVE_CUTSCENE_BODYGUARD_02");
}

func void RTN_QM401_VIENYARD_WAIT_6339() {
    TA_STAYSTRAIGHT_NOIQ(1, 0, 6, 0, "PART2_QM401_RENEGADE_WALK_02");
    TA_STAYSTRAIGHT_NOIQ(6, 0, 1, 0, "PART2_QM401_RENEGADE_WALK_02");
}

func void RTN_QM401_VIENYARD_WALK_6339() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 9, 0, "PART9_PATH_72");
    TA_STAYSTRAIGHT_NOIQ(9, 0, 8, 0, "PART9_PATH_72");
}

func void RTN_QM401_VIENYARD_FIGHT_6339() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART9_QM401_MILITIA_07");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART9_QM401_MILITIA_07");
}

