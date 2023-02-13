instance MIL_11135_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 11135;
    VOICE = 6;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_11135_MILITIA, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_11135_MILITIA, MALE, HUMHEADPSIONIC, FACE_N_MILITIA69, 1, 35482);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_11135_MILITIA);
    MDL_APPLYOVERLAYMDS(MIL_11135_MILITIA, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(MIL_11135_MILITIA);
    B_SETFIGHTSKILLS(MIL_11135_MILITIA, 45);
    DAILY_ROUTINE = RTN_START_11135;
    AIVAR[74] = NPC_MILITIAMINE_IAMMILITIA;
    AIVAR[70] = NPC_AMB_MINE_MILITIA;
}

func void RTN_START_11135() {
    TA_STAND_GUARDING(6, 0, 11, 0, "PART10_MINE_STAND_02");
    TA_SIT_BENCH_DRINK(11, 0, 12, 0, "PART10_MINE_BENCH_02");
    TA_SMALLTALK(12, 0, 20, 0, "PART10_MINE_SMALLTALK_04");
    TA_STAND_GUARDING(20, 0, 23, 25, "PART10_MINE_STAND_02");
    TA_SLEEP(23, 25, 6, 0, "PART10_HOUSE1_SLEEP_03");
}

func void RTN_SQ311_MALENDEAD_11135() {
    TA_STAND_GUARDING(6, 0, 11, 0, "PART10_MINE_STAND_06");
    TA_STAND_GUARDING(11, 0, 6, 0, "PART10_MINE_STAND_06");
}

