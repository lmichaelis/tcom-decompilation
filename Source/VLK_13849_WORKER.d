instance VLK_13849_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARBEITER;
    GUILD = GIL_VLK;
    ID = 13849;
    VOICE = 61;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13849_WORKER, 12);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_13849_WORKER, MALE, HUMHEADTHIEF, FACE_N_WORKER_72, 1, 35572);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13849_WORKER);
    B_GIVENPCTALENTS(VLK_13849_WORKER);
    B_SETFIGHTSKILLS(VLK_13849_WORKER, 20);
    DAILY_ROUTINE = RTN_START_13849;
    AIVAR[70] = NPC_AMB_CITY_WORKER;
}

func void RTN_START_13849() {
    TA_WORKTABLE(7, 18, 18, 30, "SLUMS_WORKTABLE_01");
    TA_SMOKE_WATERPIPE(18, 30, 21, 53, "HARBOUR_DARKSECRETS_PIPES");
    TA_SOFA(21, 53, 7, 18, "HARBOUR_DARKSECRETS_COUCH_04");
}

