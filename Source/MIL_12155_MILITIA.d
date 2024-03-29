instance MIL_12155_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 12155;
    VOICE = 28;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_12155_MILITIA, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_12155_MILITIA, MALE, HUMHEADWITHOUTPONY, FACE_N_MILITIA125, 3, 35482);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_12155_MILITIA);
    MDL_APPLYOVERLAYMDS(MIL_12155_MILITIA, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(MIL_12155_MILITIA);
    B_SETFIGHTSKILLS(MIL_12155_MILITIA, 45);
    DAILY_ROUTINE = RTN_START_12155;
    AIVAR[70] = NPC_AMB_MINE_MILITIA;
}

func void RTN_START_12155() {
    TA_SIT_BENCH_DRINK(6, 0, 12, 30, "PART10_MINE_BENCH_01");
    TA_CHECKSWD(12, 30, 15, 0, "PART10_MINE_CHECKSWD_01");
    TA_CROSSBOWGUARD(15, 0, 22, 0, "PART10_MINE_CHECKSWD_01");
    TA_SIT_BENCH_DRINK(22, 0, 23, 0, "PART10_MINE_BENCH_01");
    TA_SLEEP(23, 0, 6, 0, "PART10_HOUSE3_SLEEP_04");
}

