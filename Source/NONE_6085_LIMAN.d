instance NONE_6085_LIMAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_LIMAN;
    GUILD = GIL_NONE;
    ID = 6085;
    VOICE = 67;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6085_LIMAN, 14);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NONE_6085_LIMAN, MALE, HUMHEADFATBALD, FACE_P_LIMAN, 0, 35394);
    MDL_APPLYOVERLAYMDS(NONE_6085_LIMAN, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6085_LIMAN);
    B_GIVENPCTALENTS(NONE_6085_LIMAN);
    B_SETFIGHTSKILLS(NONE_6085_LIMAN, 30);
    DAILY_ROUTINE = RTN_START_6085;
}

func void RTN_START_6085() {
    TA_PLUNDER(8, 0, 11, 0, "PART4_FISHERMAN_PLUNDER_01");
    TA_SIT_BENCH(11, 0, 15, 0, "PART4_FISHERMAN_BENCH_01");
    TA_STAND_EATING(15, 0, 17, 0, "PART4_FISHERMAN_FIREPLACE_01");
    TA_STAND_DRINKING(17, 0, 19, 0, "PART4_FISHERMAN_FIREPLACE_01");
    TA_SLEEP(19, 0, 8, 0, "PART4_FISHERMAN_BED_01");
}

func void RTN_SQ123_WATCHCONTEST_6085() {
    TA_WATCHFIGHT_DUMB(8, 0, 15, 0, "PART4_FISHERMAN_SQ123_CUTSCENE_03");
    TA_WATCHFIGHT_DUMB(15, 0, 8, 0, "PART4_FISHERMAN_SQ123_CUTSCENE_03");
}

func void RTN_SQ123_STOPCONTEST_6085() {
    TA_STAYSTRAIGHT(8, 0, 15, 0, "PART4_FISHERMAN_SQ123_CUTSCENE_03");
    TA_STAYSTRAIGHT(15, 0, 8, 0, "PART4_FISHERMAN_SQ123_CUTSCENE_03");
}

func void RTN_SQ123_SVENWON_6085() {
    TA_SEARCH_SCARED(8, 0, 15, 0, "PART4_FISHERMAN_SQ123_DEAD_03");
    TA_SEARCH_SCARED(15, 0, 8, 0, "PART4_FISHERMAN_SQ123_DEAD_03");
}

func void RTN_SQ123_HAROLDWON_6085() {
    TA_WATCHFIGHT_DUMB(8, 0, 15, 0, "PART4_FISHERMAN_SQ123_DEAD_03");
    TA_WATCHFIGHT_DUMB(15, 0, 8, 0, "PART4_FISHERMAN_SQ123_DEAD_03");
}
