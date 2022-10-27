instance NOV_204_NOVIZE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_NOVIZE;
    GUILD = GIL_NOV;
    ID = 204;
    VOICE = 45;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NOV_204_NOVIZE, 25);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NOV_204_NOVIZE, MALE, HUMHEADBALD, FACE_B_NOVIZE_03, 3, 0x8b0a);
    MDL_APPLYOVERLAYMDS(NOV_204_NOVIZE, HUMANSMAGEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NOV_204_NOVIZE);
    B_GIVENPCTALENTS(NOV_204_NOVIZE);
    B_SETFIGHTSKILLS(NOV_204_NOVIZE, 40);
    DAILY_ROUTINE = RTN_START_204;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_204() {
    TA_WATCHFIGHT_DUMB(8, 0, 9, 0, "PART8_MONASTERY_Q501_WATCH_01");
    TA_WATCHFIGHT_DUMB(9, 0, 8, 0, "PART8_MONASTERY_Q501_WATCH_01");
}

func void RTN_Q501_AFTERCONTEST_204() {
    TA_LAUGH(8, 0, 9, 0, "PART8_MONASTERY_Q501_WATCH_01");
    TA_LAUGH(9, 0, 8, 0, "PART8_MONASTERY_Q501_WATCH_01");
}

func void RTN_NORMALDAY_204() {
    TA_PLUNDER(6, 0, 11, 0, "PART8_MONASTERY_PLUNDER_03");
    TA_RAKE_FP(11, 0, 14, 0, "PART8_MONASTER_RAKE_01");
    TA_RAKE_FP(14, 0, 18, 0, "PART8_MONASTER_RAKE_02");
    TA_RAKE_FP(18, 0, 23, 0, "PART8_MONASTER_RAKE_03");
    TA_SIT_BENCH(23, 0, 6, 0, "PART8_MONASTERY_BENCH_07");
}

func void RTN_TOT_204() {
    TA_COOK_STOVE(6, 0, 22, 0, TOT);
    TA_COOK_STOVE(22, 0, 6, 0, TOT);
}
