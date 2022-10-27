instance NONE_13788_FISHERMAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_FISHERMAN;
    GUILD = GIL_NONE;
    ID = 0x35dc;
    VOICE = 53;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_13788_FISHERMAN, 18);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13788_FISHERMAN, MALE, HUMHEADPSIONIC, FACE_N_FISHERMAN18, 1, 0x8a42);
    MDL_APPLYOVERLAYMDS(NONE_13788_FISHERMAN, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13788_FISHERMAN);
    B_GIVENPCTALENTS(NONE_13788_FISHERMAN);
    B_SETFIGHTSKILLS(NONE_13788_FISHERMAN, 20);
    DAILY_ROUTINE = RTN_START_13788;
}

func void RTN_START_13788() {
    TA_SEARCH_SCARED(8, 0, 13, 30, "HARBOUR_TAVERN_Q509_SCARED_02");
    TA_SEARCH_SCARED(13, 30, 8, 0, "HARBOUR_TAVERN_Q509_SCARED_02");
}

func void RTN_SCARED_13788() {
    TA_SEARCH_SCARED_NOIQ(8, 0, 13, 30, "HARBOUR_TAVERN_Q509_SCARED_02");
    TA_SEARCH_SCARED_NOIQ(13, 30, 8, 0, "HARBOUR_TAVERN_Q509_SCARED_02");
}

func void RTN_FLEE_13788() {
    TA_FLEE_NOIQ(5, 30, 9, 0, TOT);
    TA_FLEE_NOIQ(9, 0, 5, 30, TOT);
}

