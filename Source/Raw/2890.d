instance BDT_9038_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BANDIT;
    GUILD = GIL_BDT;
    ID = 0x234e;
    VOICE = 22;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_9038_BANDIT, 37);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_9038_BANDIT, MALE, HUMHEADBALD, FACE_B_BANDIT65, 3, 0x8a59);
    B_CREATEAMBIENTINV(BDT_9038_BANDIT);
    MDL_APPLYOVERLAYMDS(BDT_9038_BANDIT, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_9038_BANDIT);
    B_GIVENPCTALENTS(BDT_9038_BANDIT);
    B_SETFIGHTSKILLS(BDT_9038_BANDIT, 35);
    DAILY_ROUTINE = RTN_START_9038;
}

func void RTN_START_9038() {
    TA_PLUNDER(8, 0, 12, 0, "PART17_PATH_226");
    TA_PLUNDER(12, 0, 8, 0, "PART17_PATH_226");
}

