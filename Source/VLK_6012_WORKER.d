instance VLK_6012_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARBEITER;
    GUILD = GIL_VLK;
    ID = 6012;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6012_WORKER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6012_WORKER, MALE, HUMHEADFIGHTER, FACE_N_WORKER05, 1, 35571);
    MDL_APPLYOVERLAYMDS(VLK_6012_WORKER, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6012_WORKER);
    B_GIVENPCTALENTS(VLK_6012_WORKER);
    B_SETFIGHTSKILLS(VLK_6012_WORKER, 40);
    DAILY_ROUTINE = RTN_START_6012;
    AIVAR[70] = NPC_AMB_CITY_WORKER;
}

func void RTN_START_6012() {
    TA_REPAIR_HUT(7, 0, 9, 30, "HARBOUR_REPAIR_01");
    TA_REPAIR_HUT(9, 30, 12, 30, "HARBOUR_REPAIR_01");
    TA_SIT_BENCH_DRINK(12, 30, 13, 30, "HARBOUR_BENCH_04");
    TA_REPAIR_HUT(13, 30, 17, 45, "HARBOUR_REPAIR_01");
    TA_STAND_DRINKING(17, 45, 18, 30, "HARBOUR_PATH_315");
    TA_SMALLTALK(18, 30, 21, 30, "HARBOUR_SMALLTALK_06");
    TA_SLEEP(21, 30, 7, 0, "HARBOUR_HOUSE12_14");
}

func void RTN_KQ404_CONCERT_6012() {
    TA_SMOKE_WATERPIPE(7, 0, 16, 0, "HARBOUR_DARKSECRETS_PIPES");
    TA_STAND_DRINKING(16, 0, 18, 0, "HARBOUR_PATH_315");
    TA_CONCERT_WATCH(18, 0, 21, 0, "KQ404_VIEWER_04");
    TA_SLEEP(21, 0, 7, 0, "HARBOUR_HOUSE12_14");
}

