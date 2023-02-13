instance NONE_14049_APPARITIONWS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = MOBNAME_NOTHING;
    GUILD = GIL_FRIENDLY_HUMAN;
    ID = 14049;
    NOFOCUS = TRUE;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_14049_APPARITIONWS, 60);
    AIVAR[95] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[54] = TRUE;
    AIVAR[55] = TRUE;
    AIVAR[56] = TRUE;
    AIVAR[71] = TRUE;
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_POWERLESS;
    B_SETNPCVISUAL(NONE_14049_APPARITIONWS, MALE, HUMHEADWITHOUTPONY, FACE_G_APPARITIONWS_12, BODYTEX_G_WS, 35512);
    MDL_APPLYOVERLAYMDS(NONE_14049_APPARITIONWS, HUMANSTIREDMDS);
    B_GIVENPCTALENTS(NONE_14049_APPARITIONWS);
    B_SETFIGHTSKILLS(NONE_14049_APPARITIONWS, 35);
    DAILY_ROUTINE = RTN_START_14049;
}

func void RTN_START_14049() {
    TA_OBSERVE(21, 0, 2, 0, RNG_PAEVENT12_WAYPOINT);
    TA_OBSERVE(2, 0, 21, 0, TOT2);
}

func void RTN_TOT_14049() {
    TA_OBSERVE(21, 0, 2, 0, TOT2);
    TA_OBSERVE(2, 0, 21, 0, TOT2);
}

