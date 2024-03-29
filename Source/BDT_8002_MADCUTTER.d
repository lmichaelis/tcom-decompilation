instance BDT_8002_MADCUTTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WANTEDPOSTER_MADCUTTER;
    GUILD = GIL_BDT;
    ID = 8002;
    VOICE = 53;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_8002_MADCUTTER, 31);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(BDT_8002_MADCUTTER, 34014);
    ATTRIBUTE[1] = 600;
    ATTRIBUTE[0] = 600;
    LEVEL = 70;
    B_SETNPCVISUAL(BDT_8002_MADCUTTER, MALE, HUMHEADFIGHTER, FACE_N_BOUNTYTARGET11, 1, 35581);
    MDL_APPLYOVERLAYMDS(BDT_8002_MADCUTTER, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(BDT_8002_MADCUTTER);
    B_SETFIGHTSKILLS(BDT_8002_MADCUTTER, 45);
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
    DAILY_ROUTINE = RTN_START_8002;
}

func void RTN_START_8002() {
    TA_SEARCH_SCARED(22, 0, 8, 0, "PART11_WANTEDPOSTER_MADCUTTER");
    TA_SEARCH_SCARED(8, 0, 22, 0, "PART11_WANTEDPOSTER_MADCUTTER");
}

