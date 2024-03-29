instance SLD_13707_HEINSER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_HEISNER;
    GUILD = GIL_SLD;
    ID = 13707;
    VOICE = 42;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_13707_HEINSER, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_13707_HEINSER, MALE, HUMHEADPYMONTENEU, FACE_N_HEINSER, 1, 35529);
    MDL_APPLYOVERLAYMDS(SLD_13707_HEINSER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13707_HEINSER);
    B_GIVENPCTALENTS(SLD_13707_HEINSER);
    B_SETFIGHTSKILLS(SLD_13707_HEINSER, 35);
    DAILY_ROUTINE = RTN_START_13707;
}

func void RTN_START_13707() {
    TA_STAYSTRAIGHT(7, 0, 9, 30, "PART7_MINE_HEINSER");
    TA_CHECKLIST(9, 30, 14, 50, "PART7_MINE_HEINSER");
    TA_STAND_ARMSCROSSED(14, 50, 18, 20, "PART7_MINE_HEINSER");
    TA_STAYSTRAIGHT(18, 20, 22, 0, "PART7_MINE_HEINSER");
    TA_SIT_THRONE_NEW(22, 0, 23, 10, "PART7_MINE_THRONE_01");
    TA_SLEEP(23, 10, 7, 0, "PART7_MINE_SLEEP_16");
}

func void RTN_TOT_13707() {
    TA_STAND_WP(8, 0, 13, 0, TOT2);
    TA_STAND_WP(13, 0, 8, 0, TOT2);
}

