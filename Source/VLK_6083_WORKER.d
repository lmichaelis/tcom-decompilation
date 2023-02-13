instance VLK_6083_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARBEITER;
    GUILD = GIL_VLK;
    ID = 6083;
    VOICE = 64;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6083_WORKER, 18);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6083_WORKER, MALE, HUMHEADFIGHTER, FACE_N_WORKER08, 1, 35571);
    MDL_APPLYOVERLAYMDS(VLK_6083_WORKER, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6083_WORKER);
    B_GIVENPCTALENTS(VLK_6083_WORKER);
    B_SETFIGHTSKILLS(VLK_6083_WORKER, 30);
    DAILY_ROUTINE = RTN_START_6083;
    AIVAR[70] = NPC_AMB_CITY_WORKER;
}

func void RTN_START_6083() {
    TA_SIT_CHAIR_EAT(7, 30, 8, 15, "HARBOUR_HOUSE12_17");
    TA_REPAIR_HUT(8, 15, 12, 30, "HARBOUR_REPAIR_05");
    TA_REPAIR_HUT(12, 30, 15, 30, "HARBOUR_REPAIR_06");
    TA_STAND_DRINKING(15, 30, 16, 30, "HARBOUR_WORKER_02");
    TA_REPAIR_HUT(16, 30, 18, 30, "HARBOUR_REPAIR_05");
    TA_REPAIR_HUT(18, 30, 20, 30, "HARBOUR_REPAIR_07");
    TA_STAND_EATING(20, 30, 21, 45, "HARBOUR_MARKETSTALLBUY_03");
    TA_SLEEP(21, 45, 7, 30, "HARBOUR_HOUSE12_13");
}

func void RTN_KQ406_STOP_6083() {
    TA_SIT_CHAIR_EAT(7, 30, 8, 15, "HARBOUR_HOUSE12_17");
    TA_STAND_DRINKING(8, 15, 20, 30, "HARBOUR_WORKER_02");
    TA_STAND_EATING(20, 30, 21, 45, "HARBOUR_MARKETSTALLBUY_03");
    TA_SLEEP(21, 45, 7, 30, "HARBOUR_HOUSE12_13");
}

func void RTN_KQ406_ANGRYMOB_6083() {
    TA_ANGRYMOB_KQ406(8, 0, 9, 0, "HARBOUR_KQ406_ANGRYMOB_12");
    TA_ANGRYMOB_KQ406(9, 0, 8, 0, "HARBOUR_KQ406_ANGRYMOB_12");
}

func void RTN_Q311_6083() {
    TA_IDLE(15, 0, 8, 0, "HARBOUR_CITIZEN_PROPAGANDA_02");
    TA_IDLE(8, 0, 15, 0, "HARBOUR_CITIZEN_PROPAGANDA_02");
}

