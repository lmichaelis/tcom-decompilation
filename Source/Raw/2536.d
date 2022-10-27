instance NONE_11137_NERAL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_NERAL;
    GUILD = GIL_NONE;
    ID = 0x2b81;
    VOICE = 49;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_11137_NERAL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(NONE_11137_NERAL, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_11137_NERAL, HUMBODYNAKED0, 20, 0, HUMHEADBALD, FACE_N_NERAL, 1, 0x8b03);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_11137_NERAL);
    MDL_APPLYOVERLAYMDS(NONE_11137_NERAL, HUMANSTIREDMDS);
    B_GIVENPCTALENTS(NONE_11137_NERAL);
    B_SETFIGHTSKILLS(NONE_11137_NERAL, 25);
    DAILY_ROUTINE = RTN_START_11137;
}

func void RTN_START_11137() {
    TA_PICK_ORE(6, 0, 14, 0, "PART10_MINE_WORK_04");
    TA_SIT_BENCH(14, 0, 16, 0, "PART10_MINE_BENCH_03");
    TA_PICK_ORE(16, 0, 23, 10, "PART10_MINE_WORK_04");
    TA_SLEEP(23, 10, 6, 0, "PART10_HOUSE5_SLEEP_02");
}

func void RTN_SQ311_MALENDEAD_11137() {
    TA_IDLE(6, 0, 11, 0, "PART10_SQ311_MALENDEAD_06");
    TA_IDLE(11, 0, 6, 0, "PART10_SQ311_MALENDEAD_06");
}

func void RTN_SQ311_AFTERFIGHT_11137() {
    TA_SMALLTALK(6, 0, 22, 0, "PART10_MINE_SMALLTALK_01");
    TA_SMALLTALK(22, 0, 6, 0, "PART10_MINE_SMALLTALK_01");
}

func void RTN_Q506_CAMP_11137() {
    TA_SMALLTALK(6, 0, 22, 0, "PART5_WORKERSCAMP_SMALLTALK_02");
    TA_SMALLTALK(22, 0, 6, 0, "PART5_WORKERSCAMP_SMALLTALK_02");
}

func void RTN_TOT_11137() {
    TA_SMALLTALK(6, 0, 22, 0, TOT);
    TA_SMALLTALK(22, 0, 6, 0, TOT);
}
