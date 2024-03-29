instance NONE_603_BEEKEEPER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BEEKEEPER;
    GUILD = GIL_BAU;
    ID = 603;
    VOICE = 46;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_603_BEEKEEPER, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NONE_603_BEEKEEPER, MALE, HUMHEADPSIONIC, FACE_L_BEEKEEPER04, 2, 35572);
    MDL_APPLYOVERLAYMDS(NONE_603_BEEKEEPER, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_603_BEEKEEPER);
    B_GIVENPCTALENTS(NONE_603_BEEKEEPER);
    B_SETFIGHTSKILLS(NONE_603_BEEKEEPER, 30);
    DAILY_ROUTINE = RTN_START_603;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_603() {
    TA_SIT_BENCH_DRINK(8, 0, 12, 0, "PART7_BEEKEEPERS_BENCH_01");
    TA_REPAIR_HUT(12, 0, 18, 30, "PART7_BEEKEEPERS_FIX_01");
    TA_STAND_EATING(18, 30, 21, 0, "PART7_BEEKEEPERS_FIREPLACE_03");
    TA_SLEEP(21, 0, 8, 0, "PART7_BEEKEEPERS_BED_04");
}

