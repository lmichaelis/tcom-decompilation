instance BDT_9012_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BANDIT;
    GUILD = GIL_BDT;
    ID = 9012;
    VOICE = 68;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_9012_BANDIT, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_9012_BANDIT, MALE, HUMHEADBALD, FACE_P_BANDIT54, 0, 35407);
    B_CREATEAMBIENTINV(BDT_9012_BANDIT);
    MDL_APPLYOVERLAYMDS(BDT_9012_BANDIT, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_9012_BANDIT);
    B_GIVENPCTALENTS(BDT_9012_BANDIT);
    B_SETFIGHTSKILLS(BDT_9012_BANDIT, 50);
    DAILY_ROUTINE = RTN_START_9012;
}

func void RTN_START_9012() {
    TA_STAND_ARMSCROSSED(8, 0, 12, 0, "PART15_PATH_10");
    TA_STAND_ARMSCROSSED(12, 0, 8, 0, "PART15_PATH_10");
}

