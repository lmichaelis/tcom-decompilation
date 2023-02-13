instance NONE_14300_HOMELESS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOBO;
    GUILD = GIL_NONE;
    ID = 14300;
    VOICE = 46;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_14300_HOMELESS, 9);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(NONE_14300_HOMELESS, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_14300_HOMELESS, HUMBODYNAKED0, BODYTEX_N_HOMELESS02, 0, HUMHEADFIGHTER, FACE_N_MEATBUGHOMELESS, TEETHTEX_ROTTEN_V1, -(1));
    MDL_APPLYOVERLAYMDS(NONE_14300_HOMELESS, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_14300_HOMELESS);
    B_GIVENPCTALENTS(NONE_14300_HOMELESS);
    B_SETFIGHTSKILLS(NONE_14300_HOMELESS, 15);
    DAILY_ROUTINE = RTN_START_14300;
}

func void RTN_START_14300() {
    TA_SIT_CAMPFIRE(6, 0, 17, 0, RNG_SEVENT05_WAYPOINT);
    TA_SIT_CAMPFIRE(17, 0, 6, 0, RNG_SEVENT05_WAYPOINT);
}

func void RTN_TOT_14300() {
    TA_SIT_CAMPFIRE(6, 0, 17, 0, TOT);
    TA_SIT_CAMPFIRE(17, 0, 6, 0, TOT);
}
