instance KDW_216_INGOLF(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_INGOLF;
    GUILD = GIL_KDW;
    ID = 216;
    VOICE = 8;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[51] = MAGIC_ALWAYS;
    B_SETATTRIBUTESTOLEVEL(KDW_216_INGOLF, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(KDW_216_INGOLF, 33997);
    B_SETNPCVISUAL(KDW_216_INGOLF, MALE, HUMHEADPSIONIC, FACE_N_INGOLF, 1, 33924);
    MDL_APPLYOVERLAYMDS(KDW_216_INGOLF, HUMANSMAGEMDS);
    B_GIVENPCTALENTS(KDW_216_INGOLF);
    B_SETFIGHTSKILLS(KDW_216_INGOLF, 40);
    DAILY_ROUTINE = RTN_START_216;
}

func void RTN_START_216() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, TOT);
    TA_STAYSTRAIGHT(9, 0, 8, 0, TOT);
}

func void RTN_NORMALDAY_216() {
    TA_RUNE_MAKE(7, 0, 12, 0, "PART8_MONASTERY_MAGEROOM2_RUNE");
    TA_CHAIR_WRITING(12, 0, 15, 0, "PART8_MONASTERY_MAGEROOM2_WRITE");
    TA_POTION_ALCHEMY(15, 0, 18, 0, "PART8_MONASTERY_MAGEROOM2_ALCHEMY");
    TA_COUNTING(18, 0, 22, 0, "PART8_MONASTERY_MAGEROOM2_COUNT");
    TA_CHAIR_WRITING(22, 0, 0, 0, "PART8_MONASTERY_MAGEROOM2_WRITE");
    TA_READ_BOOKSTAND(0, 0, 7, 0, "PART8_MONASTERY_MAGEROOM2_BOOK");
}

func void RTN_Q502_CUTSCENE_216() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART8_CHURCH_STAND_04");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART8_CHURCH_STAND_04");
}

func void RTN_Q601_CHURCH_216() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART8_CHURCH_07");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART8_CHURCH_07");
}

func void RTN_Q601_GUIDE_216() {
    TA_GUIDE_PLAYER(8, 0, 9, 0, "PART8_MONASTERY_MAGEROOM2_06");
    TA_GUIDE_PLAYER(9, 0, 8, 0, "PART8_MONASTERY_MAGEROOM2_06");
}

func void RTN_Q601_SEARCH_216() {
    TA_READ(8, 0, 9, 0, "PART8_MONASTERY_MAGEROOM2_06");
    TA_READ(9, 0, 8, 0, "PART8_MONASTERY_MAGEROOM2_06");
}

func void RTN_Q601_INGOLFHOUSE_216() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART8_MONASTERY_MAGEROOM2_RUNE");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART8_MONASTERY_MAGEROOM2_RUNE");
}

func void RTN_Q601_TOWER_WAIT_216() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART15_PATH_58");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART15_PATH_58");
}

func void RTN_Q601_TOWER_GUIDE_216() {
    TA_GUIDE_PLAYER(8, 0, 9, 0, "PART15_PATH_75");
    TA_GUIDE_PLAYER(9, 0, 8, 0, "PART15_PATH_75");
}

func void RTN_Q601_TOWER_GUIDE2_216() {
    TA_GUIDE_PLAYER(8, 0, 9, 0, "PART15_TOWER_LOOKOUT01");
    TA_GUIDE_PLAYER(9, 0, 8, 0, "PART15_TOWER_LOOKOUT01");
}

func void RTN_Q601_TOWER_GUIDE3_216() {
    TA_GUIDE_PLAYER(8, 0, 9, 0, "PART15_TOWER_06");
    TA_GUIDE_PLAYER(9, 0, 8, 0, "PART15_TOWER_06");
}
