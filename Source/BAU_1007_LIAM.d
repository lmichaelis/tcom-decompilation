instance BAU_1007_LIAM(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_OLDLIAM;
    GUILD = GIL_BAU;
    ID = 1007;
    VOICE = 68;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BAU_1007_LIAM, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_1007_LIAM, MALE, HUMHEADFATBALD, FACE_N_LIAM, BODYTEX_N, 35580);
    MDL_APPLYOVERLAYMDS(BAU_1007_LIAM, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_1007_LIAM);
    B_GIVENPCTALENTS(BAU_1007_LIAM);
    B_SETFIGHTSKILLS(BAU_1007_LIAM, 30);
    DAILY_ROUTINE = RTN_START_1007;
}

func void RTN_START_1007() {
    TA_STAND_GUARDING(7, 0, 12, 0, "PART9_LIAM");
    TA_PLUNDER(12, 0, 14, 0, "PART9_VINEYARD_PLUNDER_01");
    TA_SIT_BENCH(14, 0, 17, 0, "PART9_VINEYARD_BENCH_01");
    TA_STAND_GUARDING(17, 0, 22, 0, "PART9_LIAM");
    TA_SLEEP(22, 0, 7, 0, "PART9_VINEYARD_BED_04");
}

func void RTN_TOT_1007() {
    TA_STAND_EATING(7, 0, 8, 25, TOT);
    TA_STAND_EATING(8, 25, 7, 0, TOT);
}

func void RTN_QM401_VIENYARD_1007() {
    TA_STAND_GUARDING(7, 0, 8, 25, "PART9_VINEYARD_89");
    TA_STAND_GUARDING(8, 25, 7, 0, "PART9_VINEYARD_89");
}

