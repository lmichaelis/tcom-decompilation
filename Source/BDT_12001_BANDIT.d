instance BDT_12001_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ESCAPEE;
    GUILD = GIL_BDT;
    ID = 12001;
    VOICE = 22;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BDT_12001_BANDIT, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BDT_12001_BANDIT, MALE, HUMHEADTHIEF, FACE_N_BANDIT12, 1, 35398);
    MDL_APPLYOVERLAYMDS(BDT_12001_BANDIT, HUMANSRELAXEDMDS);
    MDL_APPLYOVERLAYMDS(BDT_12001_BANDIT, HUMANS1HST1);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_12001_BANDIT);
    B_GIVENPCTALENTS(BDT_12001_BANDIT);
    B_SETFIGHTSKILLS(BDT_12001_BANDIT, 15);
    START_AISTATE = ZS_BANDIT;
}

