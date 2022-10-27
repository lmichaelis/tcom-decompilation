instance VLK_6301_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_CRANEWORKER;
    GUILD = GIL_VLK;
    ID = 0x189d;
    VOICE = 26;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6301_WORKER, 10);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6301_WORKER, MALE, HUMHEADFATBALD, FACE_N_WORKER02, 1, 0x8af3);
    MDL_APPLYOVERLAYMDS(VLK_6301_WORKER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6301_WORKER);
    B_GIVENPCTALENTS(VLK_6301_WORKER);
    B_SETFIGHTSKILLS(VLK_6301_WORKER, 40);
    DAILY_ROUTINE = RTN_START_6301;
}

func void RTN_START_6301() {
    TA_REPAIR_HUT(8, 0, 22, 0, "HARBOUR_PATH_406");
    TA_REPAIR_HUT(22, 0, 8, 0, "HARBOUR_PATH_406");
}

func void RTN_PLUNDER_6301() {
    TA_PLUNDER(8, 0, 22, 0, "SLUMS_PATH_190");
    TA_PLUNDER(22, 0, 8, 0, "SLUMS_PATH_190");
}

