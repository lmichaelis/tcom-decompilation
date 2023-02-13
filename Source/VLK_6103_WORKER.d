instance VLK_6103_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARBEITER;
    GUILD = GIL_VLK;
    ID = 6103;
    VOICE = 61;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6103_WORKER, 16);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6103_WORKER, MALE, HUMHEADPSIONIC, FACE_L_CITIZEN68, 2, 35572);
    MDL_APPLYOVERLAYMDS(VLK_6103_WORKER, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6103_WORKER);
    B_GIVENPCTALENTS(VLK_6103_WORKER);
    B_SETFIGHTSKILLS(VLK_6103_WORKER, 30);
    DAILY_ROUTINE = RTN_START_6103;
    AIVAR[70] = NPC_AMB_CITY_WORKER;
}

func void RTN_START_6103() {
    TA_STAND_SWEEPING(7, 45, 10, 0, "HARBOUR_PATH_510");
    TA_STAND_SWEEPING(10, 0, 12, 0, "HARBOUR_PATH_368");
    TA_SMOKE_WATERPIPE(12, 0, 14, 30, "HARBOUR_DARKSECRETS_PIPES");
    TA_STAND_SWEEPING(14, 30, 16, 30, "HARBOUR_PATH_36");
    TA_STAND_EATING(16, 30, 18, 0, "HARBOUR_PATH_145");
    TA_STAND_SWEEPING(18, 0, 19, 0, "HARBOUR_PATH_119");
    TA_STAND_SWEEPING(19, 0, 21, 0, "HARBOUR_PATH_112");
    TA_SIT_THRONE(21, 0, 22, 30, "HARBOUR_HOUSE10_64");
    TA_SLEEP(22, 30, 7, 45, "HARBOUR_HOUSE10_67");
}

func void RTN_Q206_FINBARBODY_6103() {
    TA_STAND_SWEEPING(7, 45, 22, 0, "HARBOUR_PATH_510");
    TA_STAND_SWEEPING(22, 0, 7, 45, TOT2);
}

