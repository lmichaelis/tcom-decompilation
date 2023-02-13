instance NONE_13728_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_DIGGER;
    GUILD = GIL_NONE;
    ID = 13728;
    VOICE = 59;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13728_WORKER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(NONE_13728_WORKER, 34015);
    B_CREATEAMBIENTINV(NONE_13728_WORKER);
    B_SETNPCVISUAL(NONE_13728_WORKER, MALE, HUMHEADBALD, FACE_N_WORKER56, BODYTEX_N_HOMELESS01, 35589);
    MDL_APPLYOVERLAYMDS(NONE_13728_WORKER, HUMANSTIREDMDS);
    B_GIVENPCTALENTS(NONE_13728_WORKER);
    B_SETFIGHTSKILLS(NONE_13728_WORKER, 20);
    DAILY_ROUTINE = RTN_START_13728;
    AIVAR[74] = NPC_ARAXOSMINE_IAMMINER;
    AIVAR[70] = NPC_AMB_MINE_MINER_ARAXOS;
}

func void RTN_START_13728() {
    TA_PICK_ORE(7, 0, 13, 35, "PART7_MINE_WORKER_GOLDMOB_03");
    TA_SIT_DEPRESSION(13, 35, 16, 20, "PART7_MINE_STAND_12");
    TA_PICK_ORE(16, 20, 20, 30, "PART7_MINE_WORKER_GOLDMOB_06");
    TA_SIT_DEPRESSION(20, 30, 22, 30, "PART7_MINE_STAND_12");
    TA_SLEEP(22, 30, 7, 0, "PART7_MINE_SLEEP_07");
}

func void RTN_QA306_CUTSCENE_13728() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 13, 0, "PART7_MINE_QA306_CUTSCENE_04");
    TA_STAYSTRAIGHT_NOIQ(13, 0, 8, 0, "PART7_MINE_QA306_CUTSCENE_04");
}

func void RTN_QA306_WORK_13728() {
    TA_PICK_ORE(8, 0, 13, 0, "PART7_MINE_WORKER_GOLDMOB_03");
    TA_PICK_ORE(13, 0, 8, 0, "PART7_MINE_WORKER_GOLDMOB_03");
}

func void RTN_TOT_13728() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}

