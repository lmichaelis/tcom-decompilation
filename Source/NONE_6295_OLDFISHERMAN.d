instance NONE_6295_OLDFISHERMAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_DRUNKFISHERMAN;
    GUILD = GIL_NONE;
    ID = 6295;
    VOICE = 68;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6295_OLDFISHERMAN, 5);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NONE_6295_OLDFISHERMAN, MALE, HUMHEADBALD, FACE_N_FISHERMAN06, 1, 35572);
    MDL_APPLYOVERLAYMDS(NONE_6295_OLDFISHERMAN, HUMANSDRUNKENMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6295_OLDFISHERMAN);
    B_GIVENPCTALENTS(NONE_6295_OLDFISHERMAN);
    B_SETFIGHTSKILLS(NONE_6295_OLDFISHERMAN, 10);
    DAILY_ROUTINE = RTN_START_6295;
}

func void RTN_START_6295() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "HARBOUR_Q206_FISHERMAN_02");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "HARBOUR_Q206_FISHERMAN_02");
}

func void RTN_TOT_6295() {
    TA_SIT_CHAIR_DRINK(8, 0, 22, 0, TOT);
    TA_SIT_CHAIR_DRINK(22, 0, 8, 0, TOT);
}

