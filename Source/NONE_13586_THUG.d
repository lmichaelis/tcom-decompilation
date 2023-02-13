instance NONE_13586_THUG(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_THUG;
    GUILD = GIL_NONE;
    ID = 13586;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13586_THUG, 25);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13586_THUG, MALE, HUMHEADPONY, FACE_N_THUG43, 1, 35438);
    MDL_APPLYOVERLAYMDS(NONE_13586_THUG, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13586_THUG);
    B_GIVENPCTALENTS(NONE_13586_THUG);
    B_SETFIGHTSKILLS(NONE_13586_THUG, 45);
    DAILY_ROUTINE = RTN_TOT_13586;
}

func void RTN_START_13586() {
    TA_STAYSTRAIGHT(6, 0, 17, 0, "HARBOUR_QM201_THUG_02");
    TA_STAYSTRAIGHT(17, 0, 6, 0, "HARBOUR_QM201_THUG_02");
}

func void RTN_TOT_13586() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

