instance BAU_706_LOKVAR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_LOKVAR;
    GUILD = GIL_BAU;
    ID = 706;
    LEVEL = 12;
    VOICE = 24;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[51] = MAGIC_ALWAYS;
    B_SETATTRIBUTESTOLEVEL(BAU_706_LOKVAR, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(BAU_706_LOKVAR, 33997);
    B_SETNPCVISUAL(BAU_706_LOKVAR, MALE, HUMHEADPSIONIC, FACE_N_LOKVAR, 1, 35593);
    MDL_APPLYOVERLAYMDS(BAU_706_LOKVAR, HUMANSMAGEMDS);
    B_GIVENPCTALENTS(BAU_706_LOKVAR);
    B_SETFIGHTSKILLS(BAU_706_LOKVAR, 60);
    DAILY_ROUTINE = RTN_START_706;
}

func void RTN_START_706() {
    TA_SIT_CHAIR_EAT(8, 0, 9, 0, "PART12_LOKVARHOUSE_CHAIR01");
    TA_SIT_CHAIR(9, 0, 12, 0, "PART12_LOKVARHOUSE_CHAIR01");
    TA_STAND_ARMSCROSSED(12, 0, 13, 0, "VILLAGE_PATH_137");
    TA_CHAIR_WRITING(13, 0, 16, 0, "PART12_LOKVARHOUSE_BED01");
    TA_STAND_DRINKING(16, 0, 19, 0, "VILLAGE_PATH_140");
    TA_SIT_CHAIR_EAT(19, 0, 20, 0, "PART12_LOKVARHOUSE_CHAIR01");
    TA_READ_BOOKSTAND(20, 0, 22, 0, "PART12_LOKVARHOUSE_BOOKSTAND");
    TA_SLEEP(22, 0, 8, 0, "PART12_LOKVARHOUSE_BED01");
}

func void RTN_Q108_WORK_706() {
    TA_CHAIR_WRITING(8, 0, 22, 0, "PART12_LOKVARHOUSE_BED01");
    TA_CHAIR_WRITING(22, 0, 8, 0, "PART12_LOKVARHOUSE_BED01");
}

func void RTN_SQ118_CUTSCENE_706() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VILLAGE_CEMETERY_LOKVAR");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VILLAGE_CEMETERY_LOKVAR");
}

func void RTN_SQ121_SLEEP_706() {
    TA_SLEEP(8, 0, 22, 0, "PART12_LOKVARHOUSE_BED01");
    TA_SLEEP(22, 0, 8, 0, "PART12_LOKVARHOUSE_BED01");
}

func void RTN_SQ121_DEEPSLEEP_706() {
    TA_SLEEP_RAMHA(8, 0, 22, 0, "PART12_LOKVARHOUSE_BED01");
    TA_SLEEP_RAMHA(22, 0, 8, 0, "PART12_LOKVARHOUSE_BED01");
}

func void RTN_SQ121_WAKEUP_706() {
    TA_OBSERVE(8, 0, 22, 0, "PART12_LOKVARHOUSE_BED01");
    TA_OBSERVE(22, 0, 8, 0, "PART12_LOKVARHOUSE_BED01");
}

func void RTN_SQ416_RAMSEY_WAIT_706() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PART12_RAMSEYHOUSE_SQ416_SPOT_06");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PART12_RAMSEYHOUSE_SQ416_SPOT_06");
}

func void RTN_SQ416_RAMSEY_PARTY_706() {
    TA_SMALLTALK(8, 0, 22, 0, "PART12_RAMSEYHOUSE_09");
    TA_SMALLTALK(22, 0, 8, 0, "PART12_RAMSEYHOUSE_09");
}

func void RTN_TOT_706() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}

