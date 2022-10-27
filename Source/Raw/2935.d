instance BDT_14021_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BANDIT;
    GUILD = GIL_BDT;
    ID = 0x36c5;
    VOICE = 51;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BDT_14021_BANDIT, 30);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(BDT_14021_BANDIT, MALE, HUMHEADBALD, FACE_L_BANDIT48, 2, 0x8a4b);
    B_GIVENPCTALENTS(BDT_14021_BANDIT);
    B_SETFIGHTSKILLS(BDT_14021_BANDIT, 50);
    MDL_APPLYOVERLAYMDS(BDT_14021_BANDIT, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_14021_BANDIT);
    DAILY_ROUTINE = RTN_START_14021;
}

func void RTN_START_14021() {
    TA_FIREPLACE(7, 0, 22, 0, "S1_BANDIT_01");
    TA_FIREPLACE(22, 0, 7, 0, "S1_BANDIT_01");
}

