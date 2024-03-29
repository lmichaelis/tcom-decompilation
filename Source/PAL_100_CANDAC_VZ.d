instance PAL_100_CANDAC_VZ(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_CANDAC;
    GUILD = GIL_NONE;
    ID = 30018;
    VOICE = 29;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    EQUIPITEM(PAL_100_CANDAC_VZ, 34027);
    B_SETATTRIBUTESTOLEVEL(PAL_100_CANDAC_VZ, 60);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(PAL_100_CANDAC_VZ, MALE, HUMHEADFIGHTER, FACE_N_CANDAC, 1, 35621);
    MDL_APPLYOVERLAYMDS(PAL_100_CANDAC_VZ, HUMANSMILITIAMDS);
    MDL_APPLYOVERLAYMDS(PAL_100_CANDAC_VZ, "HumanS_PalaPray2.mds");
    B_GIVENPCTALENTS(PAL_100_CANDAC_VZ);
    B_SETFIGHTSKILLS(PAL_100_CANDAC_VZ, 75);
    MDL_APPLYOVERLAYMDS(PAL_100_CANDAC_VZ, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(PAL_100_CANDAC_VZ, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(PAL_100_CANDAC_VZ, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(PAL_100_CANDAC_VZ, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_30018;
    AIVAR[74] = NPC_VOLFZACK_IAMWARRIOR;
}

func void RTN_START_30018() {
    TA_STAND_ARMSCROSSED(8, 0, 12, 0, "VOLFZACKE_BEFORE_CANDAC");
    TA_STAND_ARMSCROSSED(12, 0, 8, 0, "VOLFZACKE_BEFORE_CANDAC");
}

func void RTN_FAKECAMP_30018() {
    TA_STAND_GUARDING(8, 0, 12, 0, "VOLFZACKE_CANDAC");
    TA_STAND_GUARDING(12, 0, 8, 0, "VOLFZACKE_CANDAC");
}

func void RTN_CAMP_30018() {
    TA_STAND_GUARDING(8, 0, 12, 0, "VOLFZACKE_CANDAC");
    TA_STAND_GUARDING(12, 0, 8, 0, "VOLFZACKE_CANDAC");
}

func void RTN_FOLLOW_30018() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "VOLFZACKE_CANDAC");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "VOLFZACKE_CANDAC");
}

func void RTN_PUZZLE_OUTSIDE_UP_30018() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_04");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_04");
}

func void RTN_PUZZLE_OUTSIDE_DOWN_30018() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_01");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_01");
}

func void RTN_PUZZLE_OUTSIDE_LEFT_30018() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_02");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_02");
}

func void RTN_PUZZLE_OUTSIDE_RIGHT_30018() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_03");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_03");
}

func void RTN_PUZZLE_INSIDE_UPLEFT_30018() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_07");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_07");
}

func void RTN_PUZZLE_INSIDE_UPRIGHT_30018() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_08");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_08");
}

func void RTN_PUZZLE_INSIDE_DOWNLEFT_30018() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_05");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_05");
}

func void RTN_PUZZLE_INSIDE_DOWNRIGHT_30018() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_06");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_06");
}

