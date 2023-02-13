instance NONE_13709_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_DIGGER;
    GUILD = GIL_NONE;
    ID = 13709;
    VOICE = 70;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13709_WORKER, 18);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(NONE_13709_WORKER, 34015);
    B_CREATEAMBIENTINV(NONE_13709_WORKER);
    B_SETNPCVISUAL(NONE_13709_WORKER, MALE, HUMHEADFATBALD, FACE_B_WORKER44, BODYTEX_B_HOMELESS01, 35586);
    MDL_APPLYOVERLAYMDS(NONE_13709_WORKER, HUMANSTIREDMDS);
    B_GIVENPCTALENTS(NONE_13709_WORKER);
    B_SETFIGHTSKILLS(NONE_13709_WORKER, 20);
    DAILY_ROUTINE = RTN_START_13709;
    AIVAR[74] = NPC_ARAXOSMINE_IAMMINER;
}

func void RTN_START_13709() {
    TA_PICK_ORE(6, 0, 14, 0, "PART7_MINE_WORKER_GOLDMOB_01");
    TA_STAND_EATING(14, 0, 15, 10, "PART7_MINE_STAND_05");
    TA_PICK_ORE(15, 10, 22, 0, "PART7_MINE_WORKER_GOLDMOB_01");
    TA_STAND_DRINKING(22, 0, 22, 45, "PART7_MINE_STAND_05");
    TA_SLEEP(22, 45, 6, 0, "PART7_MINE_SLEEP_06");
}

func void RTN_QA306_WORK_13709() {
    TA_PICK_ORE(8, 0, 13, 0, "PART7_MINE_WORKER_GOLDMOB_01");
    TA_PICK_ORE(13, 0, 8, 0, "PART7_MINE_WORKER_GOLDMOB_01");
}

func void RTN_TOT_13709() {
    TA_STAND_WP(8, 0, 13, 0, TOT2);
    TA_STAND_WP(13, 0, 8, 0, TOT2);
}
