instance DJG_10020_JON(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_JON;
    GUILD = GIL_NONE;
    ID = 10020;
    VOICE = 14;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETATTRIBUTESTOLEVEL(DJG_10020_JON, 40);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_10020_JON, MALE, HUMHEADBALD, FACE_N_JON, 1, 35512);
    MDL_APPLYOVERLAYMDS(DJG_10020_JON, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10020_JON);
    B_GIVENPCTALENTS(DJG_10020_JON);
    B_SETFIGHTSKILLS(DJG_10020_JON, 60);
    MDL_APPLYOVERLAYMDS(DJG_10020_JON, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(DJG_10020_JON, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(DJG_10020_JON, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(DJG_10020_JON, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_10020;
}

func void RTN_START_10020() {
    TA_OBSERVE(7, 0, 22, 0, "SILVERMINE_JON");
    TA_OBSERVE(22, 0, 7, 0, "SILVERMINE_JON");
}

func void RTN_QUEEN_10020() {
    TA_GUIDE_PLAYER(7, 0, 22, 0, "SILVERMINE_JON_QUEEN");
    TA_GUIDE_PLAYER(22, 0, 7, 0, "SILVERMINE_JON_QUEEN");
}

func void RTN_FOLLOW_10020() {
    TA_FOLLOW_PLAYER(7, 0, 22, 0, "SILVERMINE_JON_QUEEN");
    TA_FOLLOW_PLAYER(22, 0, 7, 0, "SILVERMINE_JON_QUEEN");
}

instance DJG_10020_JON_WOLFSDEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_JON;
    GUILD = GIL_DJG;
    ID = 10025;
    VOICE = 14;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10020_JON_WOLFSDEN, 40);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_10020_JON_WOLFSDEN, MALE, HUMHEADBALD, FACE_N_JON, 1, 35512);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10020_JON_WOLFSDEN);
    B_GIVENPCTALENTS(DJG_10020_JON_WOLFSDEN);
    B_SETFIGHTSKILLS(DJG_10020_JON_WOLFSDEN, 60);
    DAILY_ROUTINE = RTN_START_10025;
}

func void RTN_START_10025() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "WOLFSDEN_CITADEL_HELP_HERO");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "WOLFSDEN_CITADEL_HELP_HERO");
}

