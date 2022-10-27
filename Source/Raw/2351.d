instance NONE_13729_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_DIGGER;
    GUILD = GIL_NONE;
    ID = 0x35a1;
    VOICE = 6;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13729_WORKER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(NONE_13729_WORKER, 0x84df);
    B_CREATEAMBIENTINV(NONE_13729_WORKER);
    B_SETNPCVISUAL(NONE_13729_WORKER, MALE, HUMHEADWITHOUTPONY, FACE_N_WORKER59, BODYTEX_N_HOMELESS03, 0x8b07);
    MDL_APPLYOVERLAYMDS(NONE_13729_WORKER, HUMANSTIREDMDS);
    B_GIVENPCTALENTS(NONE_13729_WORKER);
    B_SETFIGHTSKILLS(NONE_13729_WORKER, 20);
    DAILY_ROUTINE = RTN_START_13729;
    AIVAR[74] = NPC_ARAXOSMINE_IAMMINER;
    AIVAR[70] = NPC_AMB_MINE_MINER_ARAXOS;
}

func void RTN_START_13729() {
    TA_SMALLTALK(7, 0, 14, 0, "PART7_MINE_SMALLTALK_01");
    TA_PICK_ORE(14, 0, 19, 0, "PART7_MINE_WORKER_GOLDMOB_08");
    TA_SMALLTALK(19, 0, 22, 30, "PART7_MINE_SMALLTALK_01");
    TA_SLEEP(22, 30, 7, 0, "PART7_MINE_SLEEP_09");
}

func void RTN_QA306_CUTSCENE_13729() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 13, 0, "PART7_MINE_QA306_CUTSCENE_03");
    TA_STAYSTRAIGHT_NOIQ(13, 0, 8, 0, "PART7_MINE_QA306_CUTSCENE_03");
}

func void RTN_QA306_WORK_13729() {
    TA_PICK_ORE(8, 0, 13, 0, "PART7_MINE_WORKER_GOLDMOB_08");
    TA_PICK_ORE(13, 0, 8, 0, "PART7_MINE_WORKER_GOLDMOB_08");
}

func void RTN_TOT_13729() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}

