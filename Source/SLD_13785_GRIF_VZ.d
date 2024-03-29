instance SLD_13785_GRIF_VZ(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_GRIF;
    GUILD = GIL_NONE;
    ID = 137850;
    VOICE = 71;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(SLD_13785_GRIF_VZ, 60);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    EQUIPITEM(SLD_13785_GRIF_VZ, 39492);
    B_SETNPCVISUAL(SLD_13785_GRIF_VZ, MALE, HUMHEADPONY, FACE_N_GRIF, 1, 35459);
    MDL_APPLYOVERLAYMDS(SLD_13785_GRIF_VZ, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(SLD_13785_GRIF_VZ);
    B_SETFIGHTSKILLS(SLD_13785_GRIF_VZ, 90);
    MDL_APPLYOVERLAYMDS(SLD_13785_GRIF_VZ, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(SLD_13785_GRIF_VZ, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(SLD_13785_GRIF_VZ, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(SLD_13785_GRIF_VZ, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_137850;
    AIVAR[74] = NPC_VOLFZACK_IAMWARRIOR;
}

func void RTN_START_137850() {
    TA_CHECKSWD(1, 0, 6, 0, "VOLFZACKE_BEFORE_BERTEL");
    TA_CHECKSWD(6, 0, 1, 0, "VOLFZACKE_BEFORE_BERTEL");
}

func void RTN_FAKECAMP_137850() {
    TA_CHECKSWD(1, 0, 6, 0, "VOLFZACK_WARRIOR_AFTER_06");
    TA_CHECKSWD(6, 0, 1, 0, "VOLFZACK_WARRIOR_AFTER_06");
}

func void RTN_CAMP_137850() {
    TA_LOOKOUT(1, 0, 6, 0, "VOLFZACKE_BERTEL");
    TA_LOOKOUT(6, 0, 1, 0, "VOLFZACKE_BERTEL");
}

func void RTN_FOLLOW_137850() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "VOLFZACKE_BERTEL");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "VOLFZACKE_BERTEL");
}

func void RTN_PUZZLE_OUTSIDE_UP_137850() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_04");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_04");
}

func void RTN_PUZZLE_OUTSIDE_DOWN_137850() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_01");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_01");
}

func void RTN_PUZZLE_OUTSIDE_LEFT_137850() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_02");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_02");
}

func void RTN_PUZZLE_OUTSIDE_RIGHT_137850() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_03");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_03");
}

func void RTN_PUZZLE_INSIDE_UPLEFT_137850() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_07");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_07");
}

func void RTN_PUZZLE_INSIDE_UPRIGHT_137850() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_08");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_08");
}

func void RTN_PUZZLE_INSIDE_DOWNLEFT_137850() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_05");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_05");
}

func void RTN_PUZZLE_INSIDE_DOWNRIGHT_137850() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_06");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_06");
}

