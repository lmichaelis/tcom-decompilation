instance KDW_215_NOTGER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_NOTGER;
    GUILD = GIL_KDW;
    ID = 215;
    VOICE = 22;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[51] = MAGIC_ALWAYS;
    B_SETATTRIBUTESTOLEVEL(KDW_215_NOTGER, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(KDW_215_NOTGER, MALE, HUMHEADWITHOUTPONY, FACE_N_NOTGER, 1, 0x8484);
    MDL_APPLYOVERLAYMDS(KDW_215_NOTGER, HUMANSMAGEMDS);
    B_CREATEAMBIENTINV(KDW_215_NOTGER);
    B_GIVENPCTALENTS(KDW_215_NOTGER);
    B_SETFIGHTSKILLS(KDW_215_NOTGER, 50);
    DAILY_ROUTINE = RTN_START_215;
}

func void RTN_START_215() {
    TA_SIT_THRONE(7, 0, 0, 0, "PART8_CHURCH_THRONE_02");
    TA_SLEEP(0, 0, 7, 0, "PART8_MONASTERY_BED_02");
}

func void RTN_Q502_CUTSCENE_215() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART8_CHURCH_STAND_03");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART8_CHURCH_STAND_03");
}

func void RTN_Q502_WAIT_215() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART8_MONASTERY_PLACE_04");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART8_MONASTERY_PLACE_04");
}

func void RTN_Q601_CHURCH_215() {
    TA_OBSERVE(8, 0, 9, 0, "PART8_CHURCH_06");
    TA_OBSERVE(9, 0, 8, 0, "PART8_CHURCH_06");
}

func void RTN_Q601_WAIT_215() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART8_MONASTERY_112");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART8_MONASTERY_112");
}

func void RTN_Q601_INGOLFHOUSE_215() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART8_MONASTERY_MAGEROOM2_02");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART8_MONASTERY_MAGEROOM2_02");
}
