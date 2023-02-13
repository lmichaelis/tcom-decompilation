instance BDT_12000_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ESCAPEE;
    GUILD = GIL_BDT;
    ID = 12000;
    VOICE = 17;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BDT_12000_BANDIT, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BDT_12000_BANDIT, MALE, HUMHEADTHIEF, FACE_B_BANDIT13, 3, 35414);
    MDL_APPLYOVERLAYMDS(BDT_12000_BANDIT, HUMANSRELAXEDMDS);
    MDL_APPLYOVERLAYMDS(BDT_12000_BANDIT, HUMANS1HST1);
    CREATEINVITEMS(BDT_12000_BANDIT, 36889, 1);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_12000_BANDIT);
    B_GIVENPCTALENTS(BDT_12000_BANDIT);
    B_SETFIGHTSKILLS(BDT_12000_BANDIT, 15);
    START_AISTATE = RTN_START_12000;
}

func void RTN_START_12000() {
    TA_SIT_THRONE(8, 0, 22, 0, "PART15_PATH_305");
    TA_SIT_THRONE(22, 0, 8, 0, "PART15_PATH_305");
}

func void RTN_FIGHT_12000() {
    TA_RUNTOWP(8, 0, 22, 0, "PART15_PATH_311");
    TA_RUNTOWP(22, 0, 8, 0, "PART15_PATH_311");
}

