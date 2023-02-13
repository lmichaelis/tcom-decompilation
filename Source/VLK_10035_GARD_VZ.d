instance VLK_10035_GARD_VZ(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_GARD;
    GUILD = GIL_NONE;
    ID = 100350;
    VOICE = 57;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_10035_GARD_VZ, 60);
    EQUIPITEM(VLK_10035_GARD_VZ, 39601);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(VLK_10035_GARD_VZ, MALE, HUMHEADFIGHTER, FACE_P_GARD, 0, 35444);
    MDL_APPLYOVERLAYMDS(VLK_10035_GARD_VZ, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(VLK_10035_GARD_VZ);
    B_SETFIGHTSKILLS(VLK_10035_GARD_VZ, 80);
    MDL_APPLYOVERLAYMDS(VLK_10035_GARD_VZ, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(VLK_10035_GARD_VZ, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(VLK_10035_GARD_VZ, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(VLK_10035_GARD_VZ, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_100350;
    AIVAR[74] = NPC_VOLFZACK_IAMWARRIOR;
}

func void RTN_START_100350() {
    TA_PLUNDER(8, 0, 12, 0, "VOLFZACKE_BEFORE_WILLEM");
    TA_PLUNDER(12, 0, 8, 0, "VOLFZACKE_BEFORE_WILLEM");
}

func void RTN_FAKECAMP_100350() {
    TA_SIT_CASUAL(8, 0, 12, 0, "VOLFZACK_AFTER_WILLEM");
    TA_SIT_CASUAL(12, 0, 8, 0, "VOLFZACK_AFTER_WILLEM");
}

func void RTN_CAMP_100350() {
    TA_LEAN(8, 0, 12, 0, "VOLFZACK_GARD");
    TA_LEAN(12, 0, 8, 0, "VOLFZACK_GARD");
}

func void RTN_FOLLOW_100350() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "VOLFZACK_AFTER_WILLEM");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "VOLFZACK_AFTER_WILLEM");
}

func void RTN_PUZZLE_OUTSIDE_UP_100350() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_04");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_04");
}

func void RTN_PUZZLE_OUTSIDE_DOWN_100350() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_01");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_01");
}

func void RTN_PUZZLE_OUTSIDE_LEFT_100350() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_02");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_02");
}

func void RTN_PUZZLE_OUTSIDE_RIGHT_100350() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_03");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_03");
}

func void RTN_PUZZLE_INSIDE_UPLEFT_100350() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_07");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_07");
}

func void RTN_PUZZLE_INSIDE_UPRIGHT_100350() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_08");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_08");
}

func void RTN_PUZZLE_INSIDE_DOWNLEFT_100350() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_05");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_05");
}

func void RTN_PUZZLE_INSIDE_DOWNRIGHT_100350() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_06");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_06");
}

