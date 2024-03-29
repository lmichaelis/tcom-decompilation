instance BAU_700_ALBYN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_ALBYN;
    GUILD = GIL_BAU;
    ID = 700;
    VOICE = 18;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BAU_700_ALBYN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_700_ALBYN, MALE, HUMHEADPSIONIC, FACE_N_ALBYN, 1, 35545);
    MDL_APPLYOVERLAYMDS(BAU_700_ALBYN, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_700_ALBYN);
    B_GIVENPCTALENTS(BAU_700_ALBYN);
    B_SETFIGHTSKILLS(BAU_700_ALBYN, 60);
    DAILY_ROUTINE = RTN_START_700;
    AIVAR[75] = WALKMODE_WALK;
}

func void RTN_START_700() {
    TA_SIT_CHAIR_EAT(6, 0, 7, 30, "PART12_RAMSEYHOUSE_CHAIR01");
    TA_STUDY_WP(7, 30, 15, 0, "PART12_RAMSEYHOUSE_13");
    TA_CHAIR_WRITING(15, 0, 17, 0, "PART12_RAMSEYHOUSE_WRITING_01");
    TA_SIT_THRONE_READING(17, 0, 21, 0, "PART12_RAMSEYHOUSE_ARMCHAIR");
    TA_SIT_THRONE(21, 0, 23, 0, "PART12_RAMSEYHOUSE_ARMCHAIR02");
    TA_SLEEP(23, 0, 6, 0, "PART12_RAMSEYHOUSE_BED02");
}

func void RTN_TALKWITHKURT_700() {
    TA_SMALLTALK(8, 0, 22, 0, "PART12_RAMSEYHOUSE_32");
    TA_SMALLTALK(22, 0, 8, 0, "PART12_RAMSEYHOUSE_32");
}

func void RTN_SQ227_FOLLOW_700() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "VILLAGE_PATH_40");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "VILLAGE_PATH_40");
}

func void RTN_SQ416_VILLAGE_INN_700() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "VILLAGE_PUB_13");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "VILLAGE_PUB_13");
}

func void RTN_SQ416_RAMSEY_WAIT_700() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PART12_RAMSEYHOUSE_SQ416_SPOT_03");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PART12_RAMSEYHOUSE_SQ416_SPOT_03");
}

func void RTN_SQ416_RAMSEY_PARTY_700() {
    TA_STAND_DRINKING(8, 0, 22, 0, "PART12_RAMSEYHOUSE_07");
    TA_STAND_DRINKING(22, 0, 8, 0, "PART12_RAMSEYHOUSE_07");
}

func void RTN_RAMSEYCOMEBACK_700() {
    TA_CHAIR_WRITING(6, 0, 14, 0, "PART12_RAMSEYHOUSE_WRITING_01");
    TA_STUDY_WP(14, 0, 19, 0, "PART12_RAMSEYHOUSE_32");
    TA_SIT_THRONE_READING(19, 0, 23, 0, "PART12_RAMSEYHOUSE_ARMCHAIR");
    TA_SIT_THRONE(23, 0, 6, 0, "PART12_RAMSEYHOUSE_23");
}

func void RTN_TOT_700() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}

