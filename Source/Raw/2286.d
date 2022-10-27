instance NONE_14038_APPARITIONWS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = MOBNAME_NOTHING;
    GUILD = GIL_FRIENDLY_HUMAN;
    ID = 0x36d6;
    NOFOCUS = TRUE;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_14038_APPARITIONWS, 60);
    AIVAR[95] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[54] = TRUE;
    AIVAR[55] = TRUE;
    AIVAR[56] = TRUE;
    AIVAR[71] = TRUE;
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_POWERLESS;
    B_SETNPCVISUAL(NONE_14038_APPARITIONWS, MALE, HUMHEADWITHOUTPONY, FACE_G_APPARITIONWS_01, BODYTEX_G_WS, 0x8ab8);
    MDL_APPLYOVERLAYMDS(NONE_14038_APPARITIONWS, HUMANSTIREDMDS);
    B_GIVENPCTALENTS(NONE_14038_APPARITIONWS);
    B_SETFIGHTSKILLS(NONE_14038_APPARITIONWS, 35);
    DAILY_ROUTINE = RTN_START_14038;
}

func void RTN_START_14038() {
    TA_OBSERVE(21, 0, 2, 0, RNG_PAEVENT01_WAYPOINT);
    TA_OBSERVE(2, 0, 21, 0, TOT2);
}

func void RTN_TOT_14038() {
    TA_OBSERVE(21, 0, 2, 0, TOT2);
    TA_OBSERVE(2, 0, 21, 0, TOT2);
}
