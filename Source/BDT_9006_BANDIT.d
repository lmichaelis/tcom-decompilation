instance BDT_9006_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BANDIT;
    GUILD = GIL_BDT;
    ID = 9006;
    VOICE = 71;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_9006_BANDIT, 3);
    FIGHT_TACTIC = FAI_HUMAN_BAU;
    B_SETNPCVISUAL(BDT_9006_BANDIT, MALE, HUMHEADBALD, FACE_N_BANDIT36, 1, 33922);
    B_CREATEAMBIENTINV(BDT_9006_BANDIT);
    MDL_APPLYOVERLAYMDS(BDT_9006_BANDIT, HUMANSBAUFIGHTMDS);
    MDL_APPLYOVERLAYMDS(BDT_9006_BANDIT, HUMANSTIREDMDS);
    EQUIPITEM(BDT_9006_BANDIT, 39512);
    B_GIVENPCTALENTS(BDT_9006_BANDIT);
    B_SETFIGHTSKILLS(BDT_9006_BANDIT, 10);
    DAILY_ROUTINE = RTN_START_9006;
}

func void RTN_START_9006() {
    TA_STAND_GUARDING(8, 0, 12, 0, "PART13_BANDIT_03");
    TA_STAND_DRINKING(12, 0, 15, 0, "PART13_BANDIT_03");
    TA_STAND_EATING(15, 0, 17, 0, "PART13_BANDIT_03");
    TA_STAND_ARMSCROSSED(17, 0, 8, 0, "PART13_BANDIT_03");
}

