instance MIL_11142_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 0x2b86;
    VOICE = 42;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_11142_MILITIA, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_11142_MILITIA, MALE, HUMHEADWITHOUTPONY, FACE_B_MILITIA73, 3, 0x8a9a);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_11142_MILITIA);
    MDL_APPLYOVERLAYMDS(MIL_11142_MILITIA, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(MIL_11142_MILITIA);
    B_SETFIGHTSKILLS(MIL_11142_MILITIA, 45);
    DAILY_ROUTINE = RTN_START_11142;
    AIVAR[74] = NPC_MILITIAMINE_IAMMILITIA;
}

func void RTN_START_11142() {
    TA_SIT_BENCH_DRINK(6, 0, 12, 30, "PART10_MINE_BENCH_01");
    TA_CHECKSWD(12, 30, 15, 0, "PART10_MINE_CHECKSWD_01");
    TA_CROSSBOWGUARD(15, 0, 22, 0, "PART10_MINE_CHECKSWD_01");
    TA_SIT_BENCH_DRINK(22, 0, 23, 0, "PART10_MINE_BENCH_01");
    TA_SLEEP(23, 0, 6, 0, "PART10_HOUSE3_SLEEP_04");
}

func void RTN_SQ311_FIGHT_11142() {
    TA_STAND_ARMSCROSSED(6, 0, 12, 30, "PART10_PATH2_44");
    TA_STAND_ARMSCROSSED(12, 30, 6, 0, "PART10_PATH2_44");
}

func void RTN_SQ311_FIGHT2_11142() {
    TA_STAND_ARMSCROSSED(6, 0, 12, 30, "PART10_MINE_35");
    TA_STAND_ARMSCROSSED(12, 30, 6, 0, "PART10_MINE_35");
}
