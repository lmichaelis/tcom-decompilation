instance NOV_251_CURTIS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_CURTIS;
    GUILD = GIL_NOV;
    ID = 251;
    VOICE = 37;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NOV_251_CURTIS, 25);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NOV_251_CURTIS, MALE, HUMHEADBALD, FACE_N_NOVIZE_02, 1, 35594);
    MDL_APPLYOVERLAYMDS(NOV_251_CURTIS, HUMANSMAGEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NOV_251_CURTIS);
    B_GIVENPCTALENTS(NOV_251_CURTIS);
    B_SETFIGHTSKILLS(NOV_251_CURTIS, 40);
    DAILY_ROUTINE = RTN_START_251;
}

func void RTN_START_251() {
    TA_PREPAREFORFIGHT(8, 0, 9, 0, "PART8_MONASTERY_Q501_PREPARE_02");
    TA_PREPAREFORFIGHT(9, 0, 8, 0, "PART8_MONASTERY_Q501_PREPARE_02");
}

func void RTN_Q501_CONTEST_251() {
    TA_GRAPEPLUNDER_NOIQ(8, 0, 9, 0, "PART8_GRAPEPLUNDER_01");
    TA_GRAPEPLUNDER_NOIQ(9, 0, 8, 0, "PART8_GRAPEPLUNDER_01");
}

func void RTN_Q501_AFTERCONTEST_251() {
    TA_STAND_ARMSCROSSED(8, 0, 9, 0, "PART8_MONASTERY_Q501_AFTERCONTEST_02");
    TA_STAND_ARMSCROSSED(9, 0, 8, 0, "PART8_MONASTERY_Q501_AFTERCONTEST_02");
}

func void RTN_NORMALDAY_251() {
    TA_GRAPEPLUNDER(6, 0, 17, 0, "PART8_GRAPEPLUNDER_01");
    TA_SIT_BENCH(17, 0, 20, 20, "PART8_MONASTERY_BENCH_03");
    TA_GRAPEPLUNDER(20, 20, 22, 10, "PART8_GRAPEPLUNDER_01");
    TA_SLEEP(22, 10, 6, 0, "PART8_MONASTERY_NOVIZEROOM2_BED_03");
}

func void RTN_TOT_251() {
    TA_COOK_STOVE(6, 0, 22, 0, TOT);
    TA_COOK_STOVE(22, 0, 6, 0, TOT);
}

