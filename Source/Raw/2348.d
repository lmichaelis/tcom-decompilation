instance NONE_13725_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_DIGGER;
    GUILD = GIL_NONE;
    ID = 0x359d;
    VOICE = 46;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13725_WORKER, 8);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(NONE_13725_WORKER, 0x84df);
    B_CREATEAMBIENTINV(NONE_13725_WORKER);
    B_SETNPCVISUAL(NONE_13725_WORKER, MALE, HUMHEADFATBALD, FACE_N_WORKER51, BODYTEX_N_HOMELESS01, 0x8b05);
    MDL_APPLYOVERLAYMDS(NONE_13725_WORKER, HUMANSPOCKETWALKMDS);
    B_GIVENPCTALENTS(NONE_13725_WORKER);
    B_SETFIGHTSKILLS(NONE_13725_WORKER, 10);
    DAILY_ROUTINE = RTN_START_13725;
}

func void RTN_START_13725() {
    TA_SIT_SLAVSQUAT(7, 0, 12, 30, "PART7_MINE_QA306_TOLLEK_FRIEND_01");
    TA_SIT_SLAVSQUAT(12, 30, 7, 0, "PART7_MINE_QA306_TOLLEK_FRIEND_01");
}

func void RTN_QA306_WORK_13725() {
    TA_PICK_ORE(7, 0, 12, 30, "PART7_MINE_QA306_GOLDMOB_WORKER_01");
    TA_PICK_ORE(12, 30, 7, 0, "PART7_MINE_QA306_GOLDMOB_WORKER_01");
}

func void RTN_QA306_SMALLTALK_13725() {
    TA_SMALLTALK(7, 0, 12, 30, "PART7_MINE_QA306_TOLLEK_FRIEND_03");
    TA_SMALLTALK(12, 30, 7, 0, "PART7_MINE_QA306_TOLLEK_FRIEND_03");
}

func void RTN_QA306_FOLLOW_13725() {
    TA_FOLLOW_PLAYER(7, 0, 12, 30, "PART7_MINE_76");
    TA_FOLLOW_PLAYER(12, 30, 7, 0, "PART7_MINE_76");
}

func void RTN_QA306_GUIDE_13725() {
    TA_GUIDE_PLAYER(7, 0, 12, 30, "PART7_MINE_QA306_JUDGMENT_MINER_01");
    TA_GUIDE_PLAYER(12, 30, 7, 0, "PART7_MINE_QA306_JUDGMENT_MINER_01");
}

func void RTN_QA306_JUDGMENT_13725() {
    TA_STAYSTRAIGHT(8, 0, 13, 0, "PART7_MINE_QA306_JUDGMENT_MINER_01");
    TA_STAYSTRAIGHT(13, 0, 8, 0, "PART7_MINE_QA306_JUDGMENT_MINER_01");
}

func void RTN_TOT_13725() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}

