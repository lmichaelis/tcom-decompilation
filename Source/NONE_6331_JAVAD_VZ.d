instance NONE_6331_JAVAD_VZ(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_JAVAD;
    GUILD = GIL_NONE;
    ID = 30011;
    VOICE = 60;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_6331_JAVAD_VZ, 60);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(NONE_6331_JAVAD_VZ, 39578);
    B_SETNPCVISUAL(NONE_6331_JAVAD_VZ, MALE, HUMHEADFIGHTER, FACE_B_JAVED, 3, 35435);
    MDL_APPLYOVERLAYMDS(NONE_6331_JAVAD_VZ, HUMANSPOCKETWALKMDS);
    B_GIVENPCTALENTS(NONE_6331_JAVAD_VZ);
    B_SETFIGHTSKILLS(NONE_6331_JAVAD_VZ, 60);
    MDL_APPLYOVERLAYMDS(NONE_6331_JAVAD_VZ, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(NONE_6331_JAVAD_VZ, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(NONE_6331_JAVAD_VZ, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(NONE_6331_JAVAD_VZ, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_30011;
    AIVAR[74] = NPC_VOLFZACK_IAMWARRIOR;
}

func void RTN_START_30011() {
    TA_SIT_SLAVSQUAT(1, 0, 6, 0, "VOLFZACKE_BEFORE_JAVAD");
    TA_SIT_SLAVSQUAT(6, 0, 1, 0, "VOLFZACKE_BEFORE_JAVAD");
}

func void RTN_FAKECAMP_30011() {
    TA_STAND_DRINKING(1, 0, 6, 0, "VOLFZACK_WARRIOR_AFTER_05");
    TA_STAND_DRINKING(6, 0, 1, 0, "VOLFZACK_WARRIOR_AFTER_05");
}

func void RTN_CAMP_30011() {
    TA_STAND_DRINKING(1, 0, 6, 0, "VOLFZACKE_JAVAD");
    TA_STAND_DRINKING(6, 0, 1, 0, "VOLFZACKE_JAVAD");
}

func void RTN_FOLLOW_30011() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "VOLFZACKE_JAVAD");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "VOLFZACKE_JAVAD");
}

func void RTN_PUZZLE_OUTSIDE_UP_30011() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_04");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_04");
}

func void RTN_PUZZLE_OUTSIDE_DOWN_30011() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_01");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_01");
}

func void RTN_PUZZLE_OUTSIDE_LEFT_30011() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_02");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_02");
}

func void RTN_PUZZLE_OUTSIDE_RIGHT_30011() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_03");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_03");
}

func void RTN_PUZZLE_INSIDE_UPLEFT_30011() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_07");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_07");
}

func void RTN_PUZZLE_INSIDE_UPRIGHT_30011() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_08");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_08");
}

func void RTN_PUZZLE_INSIDE_DOWNLEFT_30011() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_05");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_05");
}

func void RTN_PUZZLE_INSIDE_DOWNRIGHT_30011() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_06");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_06");
}

