instance SLD_13701_FYNN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_FYNN;
    GUILD = GIL_SLD;
    ID = 0x3585;
    VOICE = 70;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_13701_FYNN, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_13701_FYNN, MALE, HUMHEADPSIONIC, FACE_N_FYNN, BODYTEX_N, 0x8ac9);
    MDL_APPLYOVERLAYMDS(SLD_13701_FYNN, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13701_FYNN);
    B_GIVENPCTALENTS(SLD_13701_FYNN);
    B_SETFIGHTSKILLS(SLD_13701_FYNN, 60);
    DAILY_ROUTINE = RTN_START_13701;
}

func void RTN_START_13701() {
    TA_SIT_THRONE_NEW(7, 20, 22, 10, "PART7_MINE_THRONE_06");
    TA_SLEEP(22, 10, 7, 20, "PART7_MINE_SLEEP_24");
}

func void RTN_GUIDE_TEST_13701() {
    TA_GUIDE_PLAYER(7, 20, 22, 10, "PART7_MINE_GOLDTESTER");
    TA_GUIDE_PLAYER(22, 10, 7, 20, "PART7_MINE_GOLDTESTER");
}

func void RTN_GOLDTEST_WAIT_13701() {
    TA_WAITING(7, 20, 22, 10, "PART7_MINE_GOLDTESTER");
    TA_WAITING(22, 10, 7, 20, "PART7_MINE_GOLDTESTER");
}

func void RTN_TOT_13701() {
    TA_STAND_WP(8, 0, 13, 0, TOT2);
    TA_STAND_WP(13, 0, 8, 0, TOT2);
}
