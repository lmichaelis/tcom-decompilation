instance NONE_13759_VOLFZACKENIGHTMARE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = MOBNAME_NOTHING;
    GUILD = GIL_FRIENDLY_HUMAN;
    ID = 13759;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_FRIEND;
    NOFOCUS = TRUE;
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
    AIVAR[95] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[54] = TRUE;
    AIVAR[55] = TRUE;
    AIVAR[56] = TRUE;
    AIVAR[71] = TRUE;
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_POWERLESS;
    ATTRIBUTE[1] = 999999999;
    ATTRIBUTE[0] = 999999999;
    PROTECTION[1] = 10000;
    PROTECTION[2] = 10000;
    PROTECTION[6] = 10000;
    PROTECTION[3] = 10000;
    PROTECTION[4] = 10000;
    PROTECTION[5] = 10000;
    MDL_SETVISUAL(NONE_13759_VOLFZACKENIGHTMARE, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_13759_VOLFZACKENIGHTMARE, "VOLFZACKE_HORROR_BODY0", BODYTEX_WG_VOLFZACKE, 0, HUMHEADBABE4, FACE_WG_VOLFZACKENIGHTMARE, TEETHTEX_ROTTEN_V2, -(1));
    B_GIVENPCTALENTS(NONE_13759_VOLFZACKENIGHTMARE);
    B_SETFIGHTSKILLS(NONE_13759_VOLFZACKENIGHTMARE, 35);
    B_CREATEAMBIENTINV(NONE_13759_VOLFZACKENIGHTMARE);
    DAILY_ROUTINE = RTN_START_13759;
}

func void RTN_START_13759() {
    TA_STAYSTRAIGHT_NOIQ(12, 0, 16, 0, RNG_VHORROREVENT01_WAYPOINT);
    TA_STAYSTRAIGHT_NOIQ(16, 0, 12, 0, RNG_VHORROREVENT01_WAYPOINT);
}

func void RTN_TOT_13759() {
    TA_STAYSTRAIGHT_NOIQ(12, 0, 16, 0, TOT);
    TA_STAYSTRAIGHT_NOIQ(16, 0, 12, 0, TOT);
}

