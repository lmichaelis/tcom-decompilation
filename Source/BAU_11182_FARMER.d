instance BAU_11182_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 11182;
    VOICE = 45;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_11182_FARMER, 14);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_11182_FARMER, MALE, HUMHEADPONY, FACE_P_FARMER40, 0, 33907);
    MDL_APPLYOVERLAYMDS(BAU_11182_FARMER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_11182_FARMER);
    B_GIVENPCTALENTS(BAU_11182_FARMER);
    B_SETFIGHTSKILLS(BAU_11182_FARMER, 25);
    DAILY_ROUTINE = RTN_START_11182;
}

func void RTN_START_11182() {
    TA_GRAPEPLUNDER(8, 0, 18, 0, "PART9_GRAPEFIELD_68");
    TA_SIT_BENCH(18, 0, 22, 0, "PART9_VINEYARD_BENCH_05");
    TA_SLEEP(22, 0, 8, 0, "PART9_HOUSE02_05_BED");
}

func void RTN_SQ225_FIGHT_WAIT_11182() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 14, 0, "PART9_VINEYARD_FIGHT_06");
    TA_STAYSTRAIGHT_NOIQ(14, 0, 8, 0, "PART9_VINEYARD_FIGHT_06");
}

func void RTN_SQ225_FIGHT_11182() {
    TA_SEARCH_ONLY_BIGFIGHT(8, 0, 14, 0, "PART9_VINEYARD_FIGHT_06");
    TA_SEARCH_ONLY_BIGFIGHT(14, 0, 8, 0, "PART9_VINEYARD_FIGHT_06");
}

func void RTN_SQ225_FLEE_11182() {
    TA_FLEE_NOIQ(8, 0, 14, 0, TOT);
    TA_FLEE_NOIQ(14, 0, 8, 0, TOT);
}

func void RTN_TOT_11182() {
    TA_GRAPEPLUNDER(8, 0, 14, 0, TOT);
    TA_GRAPEPLUNDER(14, 0, 8, 0, TOT);
}
