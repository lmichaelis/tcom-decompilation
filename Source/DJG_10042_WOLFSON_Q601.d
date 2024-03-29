instance DJG_10042_WOLFSON_Q601(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_BDT;
    ID = 10042;
    VOICE = 24;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10042_WOLFSON_Q601, 50);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_10042_WOLFSON_Q601, MALE, HUMHEADBALD, FACE_N_WOLFSON12, 1, 35520);
    MDL_APPLYOVERLAYMDS(DJG_10042_WOLFSON_Q601, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10042_WOLFSON_Q601);
    B_GIVENPCTALENTS(DJG_10042_WOLFSON_Q601);
    B_SETFIGHTSKILLS(DJG_10042_WOLFSON_Q601, 60);
    DAILY_ROUTINE = RTN_START_10042;
}

func void RTN_START_10042() {
    TA_SMALLTALK_VOLERGUARD(8, 0, 23, 0, "PART15_TOWER_SMALLTALK02");
    TA_SMALLTALK_VOLERGUARD(23, 0, 8, 0, "PART15_TOWER_SMALLTALK02");
}

