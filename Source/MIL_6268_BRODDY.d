instance MIL_6268_BRODDY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_BRODDY;
    GUILD = GIL_NONE;
    ID = 6268;
    VOICE = 64;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_6268_BRODDY, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETNPCVISUAL(MIL_6268_BRODDY, MALE, HUMHEADBALD, FACE_B_BRODDY, 3, 35509);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_6268_BRODDY);
    B_GIVENPCTALENTS(MIL_6268_BRODDY);
    B_SETFIGHTSKILLS(MIL_6268_BRODDY, 60);
    DAILY_ROUTINE = RTN_START_6268;
}

func void RTN_START_6268() {
    TA_CHECKSWD(10, 0, 12, 0, "PART7_CAVE_81");
    TA_CHECKSWD(12, 0, 10, 0, "PART7_CAVE_81");
}

func void RTN_Q205_SMELL_6268() {
    TA_SEARCH_ONLY(10, 0, 12, 0, "PART7_CAVE_76");
    TA_SEARCH_ONLY(12, 0, 10, 0, "PART7_CAVE_76");
}

func void RTN_Q205_HUNGRY_6268() {
    TA_STAND_EATING_BRODDY(10, 0, 12, 0, "PART7_CAVE_BRODDY_HUNGRY");
    TA_STAND_EATING_BRODDY(12, 0, 10, 0, "PART7_CAVE_BRODDY_HUNGRY");
}

func void RTN_Q205_SMALLTALK_6268() {
    TA_SMALLTALK(8, 0, 9, 0, "PART7_CAVE_47");
    TA_SMALLTALK(9, 0, 8, 0, "PART7_CAVE_47");
}

func void RTN_TOT_6268() {
    TA_STAND_ARMSCROSSED(8, 0, 9, 0, TOT2);
    TA_STAND_ARMSCROSSED(9, 0, 8, 0, TOT2);
}

func void RTN_QM401_FOLLOW_6268() {
    TA_FOLLOW_PLAYER(8, 0, 9, 0, "PART7_PATH_61");
    TA_FOLLOW_PLAYER(9, 0, 8, 0, "PART7_PATH_61");
}

