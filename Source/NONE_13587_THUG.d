instance NONE_13587_THUG(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_THUG;
    GUILD = GIL_NONE;
    ID = 13587;
    VOICE = 71;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13587_THUG, 25);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13587_THUG, MALE, HUMHEADBALD, FACE_P_THUG44, 0, 35414);
    MDL_APPLYOVERLAYMDS(NONE_13587_THUG, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13587_THUG);
    B_GIVENPCTALENTS(NONE_13587_THUG);
    B_SETFIGHTSKILLS(NONE_13587_THUG, 45);
    DAILY_ROUTINE = RTN_TOT_13587;
}

func void RTN_START_13587() {
    TA_STAYSTRAIGHT(6, 0, 17, 0, "HARBOUR_QM201_THUG_03");
    TA_STAYSTRAIGHT(17, 0, 6, 0, "HARBOUR_QM201_THUG_03");
}

func void RTN_TOT_13587() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}
