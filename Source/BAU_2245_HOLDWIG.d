instance BAU_2245_HOLDWIG(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_HOLDWIG;
    GUILD = GIL_NONE;
    ID = 2245;
    VOICE = 70;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BAU_2245_HOLDWIG, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_2245_HOLDWIG, MALE, HUMHEADPONY, FACE_B_HOLDWIG, 3, 35548);
    MDL_APPLYOVERLAYMDS(BAU_2245_HOLDWIG, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_2245_HOLDWIG);
    B_GIVENPCTALENTS(BAU_2245_HOLDWIG);
    B_SETFIGHTSKILLS(BAU_2245_HOLDWIG, 40);
    DAILY_ROUTINE = RTN_PRESTART_2245;
    AIVAR[75] = WALKMODE_WALK;
}

func void RTN_PRESTART_2245() {
    TA_SLEEP_NOIQ(7, 0, 22, 0, "PART9_VINEYARD_BED_HOLDWIG");
    TA_SLEEP_NOIQ(22, 0, 7, 0, "PART9_VINEYARD_BED_HOLDWIG");
}

func void RTN_VINEYARD_2245() {
    TA_SIT_CHAIR_EAT(7, 0, 8, 0, "PART9_VINEYARD_CHAIR_01");
    TA_READ(8, 0, 12, 0, "PART9_VINEYARD_55");
    TA_TABLEBOOK(12, 0, 16, 0, "PART9_VINEYARD_55");
    TA_STAND_DRINKING(16, 0, 18, 0, "PART9_VINEYARD_STAND_04");
    TA_COUNTING(18, 0, 21, 0, "PART9_VINEYARD_COUNT_01");
    TA_WATCHVINE(21, 0, 22, 30, "PART9_VINEYARD_98");
    TA_SLEEP(22, 30, 7, 0, "PART9_VINEYARD_BED_HOLDWIG");
}

func void RTN_SQ225_FINISHWAY3_VINEYARD_2245() {
    TA_SIT_CHAIR_EAT(7, 0, 9, 30, "PART9_VINEYARD_54");
    TA_READ(9, 30, 13, 25, "PART9_VINEYARD_57");
    TA_STAND_DRINKING(13, 25, 16, 0, "PART9_VINEYARD_STAND_05");
    TA_COUNTING(16, 0, 19, 0, "PART9_VINEYARD_COUNT_01");
    TA_WATCHVINE(19, 0, 22, 0, "PART9_VINEYARD_98");
    TA_SLEEP(22, 0, 7, 0, "PART9_VINEYARD_BED_HOLDWIG");
}

func void RTN_TOT_2245() {
    TA_READ(7, 0, 9, 30, TOT);
    TA_READ(9, 30, 7, 0, TOT);
}

func void RTN_SQ225_FIGHT_WAIT_2245() {
    TA_STAYSTRAIGHT_NOIQ(7, 0, 22, 0, "PART9_SQ225_HOLDWIGFIGHT_02");
    TA_STAYSTRAIGHT_NOIQ(22, 0, 7, 0, "PART9_SQ225_HOLDWIGFIGHT_02");
}

func void RTN_SQ225_FIGHT_WAIT2_2245() {
    TA_STAYSTRAIGHT_NOIQ(7, 0, 22, 0, "PART9_SQ225_HOLDWIGFIGHT_01");
    TA_STAYSTRAIGHT_NOIQ(22, 0, 7, 0, "PART9_SQ225_HOLDWIGFIGHT_01");
}

func void RTN_SQ225_FIGHT_2245() {
    TA_STAYSTRAIGHT_NODIALOGE(7, 0, 22, 0, "PART9_SQ225_HOLDWIGFIGHT_01");
    TA_STAYSTRAIGHT_NODIALOGE(22, 0, 7, 0, "PART9_SQ225_HOLDWIGFIGHT_01");
}

func void RTN_SQ225_FIGHT2_2245() {
    TA_STAND_ARMSCROSSED(7, 0, 22, 0, "PART9_SQ225_HOLDWIGFIGHT_02");
    TA_STAND_ARMSCROSSED(22, 0, 7, 0, "PART9_SQ225_HOLDWIGFIGHT_02");
}

func void RTN_SQ225_AFTERFIGHT_2245() {
    TA_FOLLOW_PLAYER(7, 0, 9, 30, "PART9_FARM_01");
    TA_FOLLOW_PLAYER(9, 30, 7, 0, "PART9_FARM_01");
}

