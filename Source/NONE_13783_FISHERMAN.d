instance NONE_13783_FISHERMAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_OLDFISHERMAN;
    GUILD = GIL_NONE;
    ID = 13783;
    VOICE = 43;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13783_FISHERMAN, 11);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13783_FISHERMAN, MALE, HUMHEADFIGHTER, FACE_P_FISHERMAN16, 0, 35394);
    MDL_APPLYOVERLAYMDS(NONE_13783_FISHERMAN, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13783_FISHERMAN);
    B_GIVENPCTALENTS(NONE_13783_FISHERMAN);
    B_SETFIGHTSKILLS(NONE_13783_FISHERMAN, 30);
    DAILY_ROUTINE = RTN_START_13783;
}

func void RTN_START_13783() {
    TA_FISHING(8, 0, 22, 0, RNG_NS57_WAYPOINT);
    TA_FISHING(22, 0, 8, 0, RNG_NS57_WAYPOINT);
}

func void RTN_TOT_13783() {
    TA_FISHING(8, 0, 22, 0, TOT2);
    TA_FISHING(22, 0, 8, 0, TOT2);
}

