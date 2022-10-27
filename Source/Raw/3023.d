instance NONE_14168_VOLFZACKENIGHTMARE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = MOBNAME_NOTHING;
    GUILD = GIL_FRIENDLY_HUMAN;
    ID = 0x3758;
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
    ATTRIBUTE[1] = 0x3b9ac9ff;
    ATTRIBUTE[0] = 0x3b9ac9ff;
    PROTECTION[1] = 0x2710;
    PROTECTION[2] = 0x2710;
    PROTECTION[6] = 0x2710;
    PROTECTION[3] = 0x2710;
    PROTECTION[4] = 0x2710;
    PROTECTION[5] = 0x2710;
    MDL_SETVISUAL(NONE_14168_VOLFZACKENIGHTMARE, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_14168_VOLFZACKENIGHTMARE, "VOLFZACKE_HORROR_BODY0", BODYTEX_WG_VOLFZACKE, 0, HUMHEADBABE4, FACE_WG_VOLFZACKENIGHTMARE, TEETHTEX_ROTTEN_V2, -(1));
    B_GIVENPCTALENTS(NONE_14168_VOLFZACKENIGHTMARE);
    B_SETFIGHTSKILLS(NONE_14168_VOLFZACKENIGHTMARE, 35);
    B_CREATEAMBIENTINV(NONE_14168_VOLFZACKENIGHTMARE);
    DAILY_ROUTINE = RTN_START_14168;
}

func void RTN_START_14168() {
    TA_STAYSTRAIGHT_NOIQ(12, 0, 16, 0, RNG_VHORROREVENT03_WAYPOINT);
    TA_STAYSTRAIGHT_NOIQ(16, 0, 12, 0, RNG_VHORROREVENT03_WAYPOINT);
}

func void RTN_TOT_14168() {
    TA_STAYSTRAIGHT_NOIQ(12, 0, 16, 0, TOT);
    TA_STAYSTRAIGHT_NOIQ(16, 0, 12, 0, TOT);
}

