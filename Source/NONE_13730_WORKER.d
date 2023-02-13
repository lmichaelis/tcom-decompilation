instance NONE_13730_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_DIGGER;
    GUILD = GIL_NONE;
    ID = 13730;
    VOICE = 61;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13730_WORKER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(NONE_13730_WORKER, 34015);
    B_CREATEAMBIENTINV(NONE_13730_WORKER);
    B_SETNPCVISUAL(NONE_13730_WORKER, MALE, HUMHEADFATBALD, FACE_L_WORKER60, BODYTEX_L_HOMELESS02, 35588);
    MDL_APPLYOVERLAYMDS(NONE_13730_WORKER, HUMANSTIREDMDS);
    B_GIVENPCTALENTS(NONE_13730_WORKER);
    B_SETFIGHTSKILLS(NONE_13730_WORKER, 20);
    DAILY_ROUTINE = RTN_START_13730;
    AIVAR[74] = NPC_ARAXOSMINE_IAMMINER;
    AIVAR[70] = NPC_AMB_MINE_MINER_ARAXOS;
}

func void RTN_START_13730() {
    TA_SMALLTALK(7, 0, 14, 0, "PART7_MINE_SMALLTALK_02");
    TA_STAND_EATING(14, 0, 16, 0, "PART7_MINE_STAND_13");
    TA_DRINKBARREL(16, 0, 19, 0, "PART7_MINE_DRINK_01");
    TA_SMALLTALK(19, 0, 22, 30, "PART7_MINE_SMALLTALK_02");
    TA_FIREPLACE(22, 30, 7, 0, "PART7_MINE_LOAFS");
}

func void RTN_QA306_CUTSCENE_13730() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 13, 0, "PART7_MINE_QA306_CUTSCENE_05");
    TA_STAYSTRAIGHT_NOIQ(13, 0, 8, 0, "PART7_MINE_QA306_CUTSCENE_05");
}

func void RTN_QA306_WORK_13730() {
    TA_PICK_ORE(8, 0, 13, 0, "PART7_MINE_WORKER_GOLDMOB_06");
    TA_PICK_ORE(13, 0, 8, 0, "PART7_MINE_WORKER_GOLDMOB_06");
}

func void RTN_TOT_13730() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}
