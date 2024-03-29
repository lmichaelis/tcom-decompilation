instance NONE_13316_FAKEJORN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BALDGUY;
    GUILD = GIL_NONE;
    ID = 13316;
    VOICE = 49;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13316_FAKEJORN, 5);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(NONE_13316_FAKEJORN, MALE, HUMHEADBALD, FACE_N_FAKEJORN01, BODYTEX_N, 35571);
    MDL_SETMODELFATNESS(NONE_13316_FAKEJORN, 1073741824);
    B_GIVENPCTALENTS(NONE_13316_FAKEJORN);
    B_SETFIGHTSKILLS(NONE_13316_FAKEJORN, 30);
    DAILY_ROUTINE = RTN_START_13316;
}

func void RTN_START_13316() {
    TA_OBSERVE(7, 0, 22, 0, RNG_NS12_FAKEJORN01_WAYPOINT);
    TA_OBSERVE(22, 0, 7, 0, RNG_NS12_FAKEJORN01_WAYPOINT);
}

func void RTN_TOT_13316() {
    TA_OBSERVE(8, 0, 22, 0, TOT);
    TA_OBSERVE(22, 0, 8, 0, TOT);
}

