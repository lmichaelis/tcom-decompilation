instance BAU_2265_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 2265;
    VOICE = 2;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_2265_FARMER, 13);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_2265_FARMER, MALE, HUMHEADPONY, FACE_N_FARMER35, 1, 33907);
    MDL_APPLYOVERLAYMDS(BAU_2265_FARMER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_2265_FARMER);
    B_GIVENPCTALENTS(BAU_2265_FARMER);
    B_SETFIGHTSKILLS(BAU_2265_FARMER, 30);
    DAILY_ROUTINE = RTN_START_2265;
}

func void RTN_START_2265() {
    TA_GRAPEPLUNDER(8, 0, 18, 0, "PART9_GRAPEFIELD_26");
    TA_STAND_EATING(18, 0, 19, 0, "PART9_HOUSE_CAMPFIRE_02");
    TA_STAND_DRINKING(19, 0, 20, 0, "PART9_HOUSE_CAMPFIRE_02");
    TA_SIT_CHAIR(20, 0, 21, 0, "PART9_HOUSE01_05_CHAIR");
    TA_SLEEP(21, 0, 8, 0, "PART9_HOUSE01_06_BED");
}

func void RTN_SQ225_FIGHT_WAIT_2265() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 14, 0, "PART9_VINEYARD_FIGHT_02");
    TA_STAYSTRAIGHT_NOIQ(14, 0, 8, 0, "PART9_VINEYARD_FIGHT_02");
}

func void RTN_SQ225_FIGHT_2265() {
    TA_SEARCH_ONLY_BIGFIGHT(8, 0, 14, 0, "PART9_VINEYARD_FIGHT_02");
    TA_SEARCH_ONLY_BIGFIGHT(14, 0, 8, 0, "PART9_VINEYARD_FIGHT_02");
}

func void RTN_SQ225_FLEE_2265() {
    TA_FLEE_NOIQ(8, 0, 14, 0, TOT);
    TA_FLEE_NOIQ(14, 0, 8, 0, TOT);
}

func void RTN_TOT_2265() {
    TA_GRAPEPLUNDER(8, 0, 14, 0, TOT);
    TA_GRAPEPLUNDER(14, 0, 8, 0, TOT);
}

