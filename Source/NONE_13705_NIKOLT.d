instance NONE_13705_NIKOLT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_NIKOLT;
    GUILD = GIL_NONE;
    ID = 13705;
    VOICE = 3;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13705_NIKOLT, 11);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(NONE_13705_NIKOLT, 34015);
    B_CREATEAMBIENTINV(NONE_13705_NIKOLT);
    B_SETNPCVISUAL(NONE_13705_NIKOLT, MALE, HUMHEADFIGHTER, FACE_L_NIKOLT, BODYTEX_L_HOMELESS01, 35588);
    B_GIVENPCTALENTS(NONE_13705_NIKOLT);
    B_SETFIGHTSKILLS(NONE_13705_NIKOLT, 10);
    DAILY_ROUTINE = RTN_START_13705;
}

func void RTN_START_13705() {
    TA_SEARCH_ONLY(7, 20, 22, 10, "PART7_MINE_NIKOLT");
    TA_SEARCH_ONLY(22, 10, 7, 20, "PART7_MINE_NIKOLT");
}

func void RTN_BREAK_13705() {
    TA_SIT_CHAIR_DRINK(7, 20, 22, 10, "PART7_MINE_CHAIR_02");
    TA_SIT_CHAIR_DRINK(22, 10, 7, 20, "PART7_MINE_CHAIR_02");
}

func void RTN_COMEBACK_13705() {
    TA_FOLLOW_PLAYER(7, 20, 22, 10, "PART7_MINE_NIKOLT");
    TA_FOLLOW_PLAYER(22, 10, 7, 20, "PART7_MINE_NIKOLT");
}

func void RTN_WORK_13705() {
    TA_PICK_ORE(7, 20, 22, 10, "PART7_MINE_GOLDMOB_NIKOLT");
    TA_SIT_CHAIR_DRINK(22, 10, 7, 20, "PART7_MINE_CHAIR_02");
}

func void RTN_QA306_WORK_13705() {
    TA_PICK_ORE(8, 0, 13, 0, "PART7_MINE_GOLDMOB_NIKOLT");
    TA_PICK_ORE(13, 0, 8, 0, "PART7_MINE_GOLDMOB_NIKOLT");
}

func void RTN_QA306_JUDGMENT_13705() {
    TA_WAITING(8, 0, 13, 0, "PART7_MINE_QA306_JUDGMENT_NIKOLT");
    TA_WAITING(13, 0, 8, 0, "PART7_MINE_QA306_JUDGMENT_NIKOLT");
}

func void RTN_TOT_13705() {
    TA_STAND_WP(8, 0, 13, 0, TOT2);
    TA_STAND_WP(13, 0, 8, 0, TOT2);
}

