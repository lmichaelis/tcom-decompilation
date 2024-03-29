instance KDF_6404_TRIMEGISTO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_TRIMEGISTO;
    GUILD = GIL_KDF;
    ID = 6404;
    VOICE = 8;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(KDF_6404_TRIMEGISTO, 60);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[51] = MAGIC_ALWAYS;
    B_SETNPCVISUAL(KDF_6404_TRIMEGISTO, MALE, HUMHEADPONY, FACE_N_TRIMEGISTO, 1, 33919);
    MDL_APPLYOVERLAYMDS(KDF_6404_TRIMEGISTO, HUMANSMAGEMDS);
    B_CREATEAMBIENTINV(KDF_6404_TRIMEGISTO);
    B_GIVENPCTALENTS(KDF_6404_TRIMEGISTO);
    B_SETFIGHTSKILLS(KDF_6404_TRIMEGISTO, 40);
    DAILY_ROUTINE = RTN_START_6404;
}

func void RTN_START_6404() {
    TA_READ(7, 0, 10, 25, "PARTM1_FIREMAGES_35");
    TA_COUNTING(10, 25, 14, 0, "PARTM1_FIREMAGES_36");
    TA_CHECKLIST(14, 0, 17, 0, "PARTM1_FIREMAGES_35");
    TA_READ(17, 0, 22, 0, "PARTM1_FIREMAGES_35");
    TA_SLEEP(22, 0, 7, 0, "PARTM1_FIREMAGES_BED_04");
}

func void RTN_GRAVE_6404() {
    TA_STAYSTRAIGHT(14, 10, 12, 55, "PARTM8_FUNERAL_TRIMEGISTO");
    TA_STAYSTRAIGHT(12, 55, 14, 10, "PARTM8_FUNERAL_TRIMEGISTO");
}

func void RTN_WAIT_6404() {
    TA_STAYSTRAIGHT(14, 10, 12, 55, "PARTM8_FUNERAL_CITIZEN_03");
    TA_STAYSTRAIGHT(12, 55, 14, 10, "PARTM8_FUNERAL_CITIZEN_03");
}

func void RTN_SQ313_START_6404() {
    TA_STAYSTRAIGHT(14, 10, 12, 55, "PARTM1_STAND_03");
    TA_STAYSTRAIGHT(12, 55, 14, 10, "PARTM1_STAND_03");
}

func void RTN_SQ313_FOLLOW_6404() {
    TA_FOLLOW_PLAYER(14, 10, 12, 55, "PARTM1_STAND_03");
    TA_FOLLOW_PLAYER(12, 55, 14, 10, "PARTM1_STAND_03");
}

func void RTN_SQ313_HUUGHOUSE_6404() {
    TA_STAYSTRAIGHT_NOIQ(7, 0, 14, 0, "SLUMS_SQ313_CUTSCENE_MAGE_02");
    TA_STAYSTRAIGHT_NOIQ(14, 0, 7, 0, "SLUMS_SQ313_CUTSCENE_MAGE_02");
}

func void RTN_SQ313_TRAP_6404() {
    TA_TABLEBOOK(7, 0, 14, 0, "SLUMS_HOUSE08_06");
    TA_TABLEBOOK(14, 0, 7, 0, "SLUMS_HOUSE08_06");
}

func void RTN_SQ313_HUUGHOUSE_WAIT_6404() {
    TA_STAYSTRAIGHT(7, 0, 14, 0, "SLUMS_PATH_122");
    TA_STAYSTRAIGHT(14, 0, 7, 0, "SLUMS_PATH_122");
}

func void RTN_SQ313_GUIDE_6404() {
    TA_GUIDE_PLAYER(7, 0, 14, 0, "PARTM1_FIREMAGES_35");
    TA_GUIDE_PLAYER(14, 0, 7, 0, "PARTM1_FIREMAGES_35");
}

func void RTN_SQ313_JUDGE_6404() {
    TA_STAYSTRAIGHT_NOIQ(7, 0, 14, 0, "PARTM1_FIREMAGES_35");
    TA_STAYSTRAIGHT_NOIQ(14, 0, 7, 0, "PARTM1_FIREMAGES_35");
}

