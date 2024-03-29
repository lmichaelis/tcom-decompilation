instance DJG_10027_DALMON(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_DALMON;
    GUILD = GIL_DJG;
    ID = 10027;
    VOICE = 13;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10027_DALMON, 60);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_10027_DALMON, MALE, HUMHEADBALD, FACE_L_DALMON, 2, 35512);
    MDL_APPLYOVERLAYMDS(DJG_10027_DALMON, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10027_DALMON);
    B_GIVENPCTALENTS(DJG_10027_DALMON);
    B_SETFIGHTSKILLS(DJG_10027_DALMON, 90);
    DAILY_ROUTINE = RTN_START_10027;
}

func void RTN_START_10027() {
    TA_SIT_CHAIR(8, 0, 14, 0, "WOLFSDEN_TAVERN_CHAIR05");
    TA_SIT_CHAIR(14, 0, 8, 0, "WOLFSDEN_TAVERN_CHAIR05");
}

func void RTN_LETTER_10027() {
    TA_RUNTOWP(8, 0, 14, 0, "WOLFSDEN_CITADEL_10");
    TA_RUNTOWP(14, 0, 8, 0, "WOLFSDEN_CITADEL_10");
}

func void RTN_RUNMINE_10027() {
    TA_RUNTOWP(8, 0, 14, 0, "WOLFSDEN_CITADEL_HELP_04");
    TA_RUNTOWP(14, 0, 8, 0, "WOLFSDEN_CITADEL_HELP_04");
}

func void RTN_GUARDMINE_10027() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, "WOLFSDEN_CITADEL_HELP_04");
    TA_STAYSTRAIGHT(23, 0, 8, 0, "WOLFSDEN_CITADEL_HELP_04");
}

func void RTN_TOT_10027() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, TOT);
    TA_STAYSTRAIGHT(23, 0, 8, 0, TOT);
}

