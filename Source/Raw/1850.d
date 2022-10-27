instance VLK_6302_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_CRANEWORKER;
    GUILD = GIL_VLK;
    ID = 0x189e;
    VOICE = 43;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6302_WORKER, 10);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6302_WORKER, MALE, HUMHEADBALD, FACE_B_WORKER01, 3, 0x8473);
    MDL_APPLYOVERLAYMDS(VLK_6302_WORKER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6302_WORKER);
    B_GIVENPCTALENTS(VLK_6302_WORKER);
    B_SETFIGHTSKILLS(VLK_6302_WORKER, 40);
    DAILY_ROUTINE = RTN_START_6302;
}

func void RTN_START_6302() {
    TA_REPAIR_HUT(8, 0, 22, 0, "HARBOUR_PATH_409");
    TA_REPAIR_HUT(22, 0, 8, 0, "HARBOUR_PATH_409");
}

