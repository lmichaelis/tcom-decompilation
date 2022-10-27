instance VLK_6016_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARBEITER;
    GUILD = GIL_VLK;
    ID = 0x1780;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6016_WORKER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6016_WORKER, MALE, HUMHEADFIGHTER, FACE_N_WORKER07, 1, 0x8472);
    MDL_APPLYOVERLAYMDS(VLK_6016_WORKER, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6016_WORKER);
    B_GIVENPCTALENTS(VLK_6016_WORKER);
    B_SETFIGHTSKILLS(VLK_6016_WORKER, 40);
    DAILY_ROUTINE = RTN_START_6016;
    AIVAR[70] = NPC_AMB_CITY_WORKER;
}

func void RTN_START_6016() {
    TA_REPAIR_HUT(7, 30, 11, 0, "HARBOUR_REPAIR_02");
    TA_STAND_EATING(11, 0, 13, 0, "HARBOUR_PATH_328");
    TA_REPAIR_HUT(13, 0, 18, 30, "HARBOUR_REPAIR_02");
    TA_SIT_BENCH_DRINK(18, 30, 22, 30, "HARBOUR_BENCH_14");
    TA_SLEEP(22, 30, 7, 30, "HARBOUR_HOUSE05_18");
}

func void RTN_Q206_FINBARBODY_6016() {
    TA_REPAIR_HUT(7, 30, 22, 0, "HARBOUR_REPAIR_02");
    TA_SLEEP(22, 0, 7, 30, TOT2);
}
