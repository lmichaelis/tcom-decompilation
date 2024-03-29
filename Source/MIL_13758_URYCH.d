instance MIL_13758_URYCH(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_URYCH;
    GUILD = GIL_MIL;
    ID = 13758;
    VOICE = 43;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_13758_URYCH, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13758_URYCH, MALE, HUMHEADWITHOUTPONY, FACE_N_URYCH, 1, 35482);
    MDL_APPLYOVERLAYMDS(MIL_13758_URYCH, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13758_URYCH);
    B_GIVENPCTALENTS(MIL_13758_URYCH);
    B_SETFIGHTSKILLS(MIL_13758_URYCH, 40);
    DAILY_ROUTINE = RTN_START_13758;
}

func void RTN_START_13758() {
    TA_COOK_STOVE(7, 0, 12, 0, "PARTM1_HOUSE_STOVE_02");
    TA_COUNTING(12, 0, 15, 0, "PARTM1_HOUSE_COUNT_01");
    TA_DRINKBARREL(15, 0, 18, 0, "PARTM1_HOUSE_WATER_01");
    TA_COOK_STOVE(18, 0, 22, 0, "PARTM1_HOUSE_STOVE_02");
    TA_SIT_BENCH_DRINK(22, 0, 7, 0, "PARTM1_BENCH_06");
}

func void RTN_TOT_13758() {
    TA_STAYSTRAIGHT(7, 0, 12, 0, TOT);
    TA_STAYSTRAIGHT(12, 0, 7, 0, TOT);
}

