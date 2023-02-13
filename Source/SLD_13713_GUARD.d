instance SLD_13713_GUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WACHE;
    GUILD = GIL_SLD;
    ID = 13713;
    VOICE = 13;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_13713_GUARD, 35);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(SLD_13713_GUARD, MALE, HUMHEADFIGHTER, FACE_N_ARAXOS39, 1, 35454);
    MDL_APPLYOVERLAYMDS(SLD_13713_GUARD, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13713_GUARD);
    B_GIVENPCTALENTS(SLD_13713_GUARD);
    B_SETFIGHTSKILLS(SLD_13713_GUARD, 40);
    DAILY_ROUTINE = RTN_START_13713;
}

func void RTN_START_13713() {
    TA_GUARD_PASSAGE(7, 0, 10, 0, "PART7_MINE_IGORGUARD");
    TA_GUARD_PASSAGE(10, 0, 7, 0, "PART7_MINE_IGORGUARD");
}

func void RTN_QA306_DEEPSLEEP_13713() {
    TA_SLEEP_RAMHA(7, 0, 10, 0, "PART7_MINE_IGORGUARD");
    TA_SLEEP_RAMHA(10, 0, 7, 0, "PART7_MINE_IGORGUARD");
}

func void RTN_TOT_13713() {
    TA_STAND_WP(8, 0, 13, 0, TOT2);
    TA_STAND_WP(13, 0, 8, 0, TOT2);
}

