instance NONE_13710_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_DIGGER;
    GUILD = GIL_NONE;
    ID = 13710;
    VOICE = 72;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13710_WORKER, 18);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(NONE_13710_WORKER, 34015);
    B_CREATEAMBIENTINV(NONE_13710_WORKER);
    B_SETNPCVISUAL(NONE_13710_WORKER, MALE, HUMHEADBALD, FACE_L_WORKER46, BODYTEX_L_HOMELESS01, 35587);
    MDL_APPLYOVERLAYMDS(NONE_13710_WORKER, HUMANSTIREDMDS);
    B_GIVENPCTALENTS(NONE_13710_WORKER);
    B_SETFIGHTSKILLS(NONE_13710_WORKER, 20);
    DAILY_ROUTINE = RTN_START_13710;
    AIVAR[74] = NPC_ARAXOSMINE_IAMMINER;
}

func void RTN_START_13710() {
    TA_PICK_ORE(6, 0, 13, 20, "PART7_MINE_WORKER_GOLDMOB_02");
    TA_STAND_DRINKING(13, 20, 14, 5, "PART7_MINE_STAND_06");
    TA_PICK_ORE(14, 5, 21, 35, "PART7_MINE_WORKER_GOLDMOB_02");
    TA_PLAY_LUTE(21, 35, 22, 30, "PART7_MINE_STAND_06");
    TA_SLEEP(22, 30, 6, 0, "PART7_MINE_SLEEP_10");
}

func void RTN_QA306_WORK_13710() {
    TA_PICK_ORE(8, 0, 13, 0, "PART7_MINE_WORKER_GOLDMOB_02");
    TA_PICK_ORE(13, 0, 8, 0, "PART7_MINE_WORKER_GOLDMOB_02");
}

func void RTN_TOT_13710() {
    TA_STAND_WP(8, 0, 13, 0, TOT2);
    TA_STAND_WP(13, 0, 8, 0, TOT2);
}

