instance VLK_12289_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARBEITER;
    GUILD = GIL_VLK;
    ID = 0x2c19;
    VOICE = 59;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_12289_WORKER, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_12289_WORKER, MALE, HUMHEADFATBALD, FACE_N_WORKER32, 1, 0x8af3);
    MDL_APPLYOVERLAYMDS(VLK_12289_WORKER, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_12289_WORKER);
    B_GIVENPCTALENTS(VLK_12289_WORKER);
    B_SETFIGHTSKILLS(VLK_12289_WORKER, 25);
    DAILY_ROUTINE = RTN_START_11289;
    AIVAR[70] = NPC_AMB_CITY_WORKER;
}

func void RTN_START_11289() {
    TA_STAND_SWEEPING(8, 13, 13, 0, "PARTM5_ERNESTO_06");
    TA_STAND_SWEEPING(13, 0, 16, 0, "PARTM5_ERNESTO_02");
    TA_PLUNDER(16, 0, 19, 0, "PARTM5_ERNESTO_09");
    TA_STAND_DRINKING(19, 0, 23, 40, "HARBOUR_DARKSECRETS_04");
    TA_SLEEP(23, 40, 8, 13, "HARBOUR_STORAGE02_18");
}

func void RTN_SQ411_REPAIR_11289() {
    TA_REPAIR_HUT(8, 0, 22, 0, "PARTM5_HEROHOUSE_01");
    TA_REPAIR_HUT(22, 0, 8, 0, "PARTM5_HEROHOUSE_01");
}

func void RTN_Q206_FINBARBODY_11289() {
    TA_PLUNDER(16, 0, 19, 0, "PARTM5_ERNESTO_09");
    TA_PLUNDER(19, 0, 16, 0, "PARTM5_ERNESTO_09");
}

