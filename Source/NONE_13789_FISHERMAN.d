instance NONE_13789_FISHERMAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_FISHERMAN;
    GUILD = GIL_NONE;
    ID = 13789;
    VOICE = 66;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_13789_FISHERMAN, 18);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13789_FISHERMAN, MALE, HUMHEADBALD, FACE_N_FISHERMAN19, 1, 35396);
    MDL_APPLYOVERLAYMDS(NONE_13789_FISHERMAN, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13789_FISHERMAN);
    B_GIVENPCTALENTS(NONE_13789_FISHERMAN);
    B_SETFIGHTSKILLS(NONE_13789_FISHERMAN, 20);
    DAILY_ROUTINE = RTN_START_13789;
}

func void RTN_START_13789() {
    TA_SEARCH_SCARED_NOIQ(8, 0, 13, 30, "HARBOUR_TAVERN_Q509_SCARED_03");
    TA_SEARCH_SCARED_NOIQ(13, 30, 8, 0, "HARBOUR_TAVERN_Q509_SCARED_03");
}

func void RTN_FLEE_13789() {
    TA_FLEE_NOIQ(5, 30, 9, 0, TOT);
    TA_FLEE_NOIQ(9, 0, 5, 30, TOT);
}

