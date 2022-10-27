instance NONE_11240_APPARITION(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = MOBNAME_NOTHING;
    GUILD = GIL_FRIENDLY_HUMAN;
    ID = 0x2be8;
    NOFOCUS = TRUE;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_11240_APPARITION, 60);
    AIVAR[95] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[54] = TRUE;
    AIVAR[55] = TRUE;
    AIVAR[56] = TRUE;
    AIVAR[71] = TRUE;
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_POWERLESS;
    B_SETNPCVISUAL(NONE_11240_APPARITION, FEMALE, HUMHEADBABE4, FACE_WG_APPARITION03, BODYTEX_WG, 0x846e);
    MDL_APPLYOVERLAYMDS(NONE_11240_APPARITION, HUMANSTIREDMDS);
    B_GIVENPCTALENTS(NONE_11240_APPARITION);
    B_SETFIGHTSKILLS(NONE_11240_APPARITION, 35);
    DAILY_ROUTINE = RTN_START_11240;
}

func void RTN_START_11240() {
    TA_STAYSTRAIGHT_NOIQ(0, 0, 2, 0, "PART4_PATHFOREST_72B");
    TA_STAYSTRAIGHT_NOIQ(2, 0, 0, 0, TOT2);
}

func void RTN_TOT_11240() {
    TA_STAYSTRAIGHT_NOIQ(0, 0, 2, 0, TOT2);
    TA_STAYSTRAIGHT_NOIQ(2, 0, 0, 0, TOT2);
}

