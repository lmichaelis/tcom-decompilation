instance BDT_9007_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BANDIT;
    GUILD = GIL_BDT;
    ID = 0x232f;
    VOICE = 53;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_9007_BANDIT, 35);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_9007_BANDIT, MALE, HUMHEADBALD, FACE_N_BANDIT49, 1, 0x8a6f);
    B_CREATEAMBIENTINV(BDT_9007_BANDIT);
    MDL_APPLYOVERLAYMDS(BDT_9007_BANDIT, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_9007_BANDIT);
    B_GIVENPCTALENTS(BDT_9007_BANDIT);
    B_SETFIGHTSKILLS(BDT_9007_BANDIT, 35);
    DAILY_ROUTINE = RTN_START_9007;
}

func void RTN_START_9007() {
    TA_STAND_ARMSCROSSED(8, 0, 12, 0, "PART_13_FABIO_CAVE_01");
    TA_STAND_ARMSCROSSED(12, 0, 8, 0, "PART_13_FABIO_CAVE_01");
}

