instance BAU_2244_TERRY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOBO;
    GUILD = GIL_NONE;
    ID = 2244;
    VOICE = 10;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BAU_2244_TERRY, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_2244_TERRY, MALE, HUMHEADFATBALD, FACE_N_TERRY, BODYTEX_N, 33906);
    MDL_APPLYOVERLAYMDS(BAU_2244_TERRY, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_2244_TERRY);
    B_GIVENPCTALENTS(BAU_2244_TERRY);
    B_SETFIGHTSKILLS(BAU_2244_TERRY, 30);
    DAILY_ROUTINE = RTN_START_2244;
}

func void RTN_START_2244() {
    TA_PREACH_TERRY(7, 0, 22, 0, "PART9_TERRY");
    TA_PREACH_TERRY(22, 0, 7, 0, "PART9_TERRY");
}

func void RTN_SQ116_CUTSCENE_2244() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PART9_TERRY");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PART9_TERRY");
}

func void RTN_SQ116_FLEE_2244() {
    TA_FLEE_NOIQ(7, 0, 22, 0, "PART1_PATH_20");
    TA_FLEE_NOIQ(22, 0, 7, 0, "PART1_PATH_20");
}

func void RTN_SQ116_CUTSCENE_TERRYDEAD_2244() {
    TA_STAYSTRAIGHT(7, 0, 12, 0, "PART9_SQ116_CUTSCENE_TERRY_DEAD");
    TA_STAYSTRAIGHT(12, 0, 7, 0, "PART9_SQ116_CUTSCENE_TERRY_DEAD");
}

func void RTN_SQ116_DEAD_2244() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PART9_TERRY_BODY");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PART9_TERRY_BODY");
}

func void RTN_SQ116_CUTSCENE_TERRYTRIALOG_2244() {
    TA_STAND_ARMSCROSSED(7, 0, 22, 0, "PART9_TERRY");
    TA_STAND_ARMSCROSSED(22, 0, 7, 0, "PART9_TERRY");
}

func void RTN_TOT_2244() {
    TA_FLEE_NOIQ(7, 0, 22, 0, TOT2);
    TA_FLEE_NOIQ(22, 0, 7, 0, TOT2);
}

