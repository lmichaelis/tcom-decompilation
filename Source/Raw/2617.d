instance BAU_714_REMY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_REMY;
    GUILD = GIL_BAU;
    ID = 714;
    VOICE = 6;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BAU_714_REMY, 3);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_714_REMY, MALE, HUMHEADFATBALD, FACE_N_REMY, 1, 0x8aef);
    MDL_APPLYOVERLAYMDS(BAU_714_REMY, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(BAU_714_REMY);
    B_SETFIGHTSKILLS(BAU_714_REMY, 10);
    DAILY_ROUTINE = RTN_START_714;
}

func void RTN_START_714() {
    TA_SIT_BENCH(7, 0, 10, 0, "VILLAGE_PATH_93");
    TA_BUTCHER(10, 0, 14, 0, "VILLAGE_HOUSE_04_BUTCHER");
    TA_SIT_BENCH(14, 0, 16, 0, "VILLAGE_PATH_93");
    TA_BUTCHER(16, 0, 22, 0, "VILLAGE_HOUSE_04_BUTCHER");
    TA_SLEEP(22, 0, 7, 0, "VILLAGE_HOUSE_04_BED01");
}

func void RTN_GQ001BEGGINING_714() {
    TA_IDLE(0, 0, 9, 0, "VILLAGE_POORPLACE_06");
    TA_IDLE(9, 0, 0, 0, "VILLAGE_POORPLACE_06");
}

func void RTN_TOT_714() {
    TA_STAYSTRAIGHT(8, 0, 11, 0, TOT);
    TA_STAYSTRAIGHT(11, 0, 8, 0, TOT);
}

