instance BDT_9005_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BANDIT;
    GUILD = GIL_BDT;
    ID = 0x232d;
    VOICE = 54;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_9005_BANDIT, 3);
    FIGHT_TACTIC = FAI_HUMAN_BAU;
    B_SETNPCVISUAL(BDT_9005_BANDIT, MALE, HUMHEADBALD, FACE_N_BANDIT35, 1, 0x8482);
    B_CREATEAMBIENTINV(BDT_9005_BANDIT);
    MDL_APPLYOVERLAYMDS(BDT_9005_BANDIT, HUMANSBAUFIGHTMDS);
    MDL_APPLYOVERLAYMDS(BDT_9005_BANDIT, HUMANSTIREDMDS);
    EQUIPITEM(BDT_9005_BANDIT, 0x84cc);
    B_GIVENPCTALENTS(BDT_9005_BANDIT);
    B_SETFIGHTSKILLS(BDT_9005_BANDIT, 10);
    DAILY_ROUTINE = RTN_START_9005;
}

func void RTN_START_9005() {
    TA_STAND_GUARDING(8, 0, 12, 0, "PART13_BANDIT_02");
    TA_STAND_EATING(12, 0, 15, 0, "PART13_BANDIT_02");
    TA_STAND_DRINKING(15, 0, 17, 0, "PART13_BANDIT_02");
    TA_STAND_ARMSCROSSED(17, 0, 8, 0, "PART13_BANDIT_02");
}

