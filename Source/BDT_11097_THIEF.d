instance BDT_11097_THIEF(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_THIEF;
    GUILD = GIL_NONE;
    ID = 11097;
    VOICE = 42;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_11097_THIEF, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_11097_THIEF, MALE, HUMHEADBALD, FACE_P_THIEF05, 1, 35417);
    MDL_APPLYOVERLAYMDS(BDT_11097_THIEF, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_11097_THIEF);
    B_GIVENPCTALENTS(BDT_11097_THIEF);
    B_SETFIGHTSKILLS(BDT_11097_THIEF, 50);
    DAILY_ROUTINE = RTN_START_11097;
}

func void RTN_START_11097() {
    TA_STAND_ARMSCROSSED(7, 0, 15, 0, "PARTM3_HOBO_06");
    TA_STAND_ARMSCROSSED(15, 0, 7, 0, "PARTM3_HOBO_06");
}

