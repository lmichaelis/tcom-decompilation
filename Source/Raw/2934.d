instance BDT_14019_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BANDIT;
    GUILD = GIL_BDT;
    ID = 0x36c3;
    VOICE = 49;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BDT_14019_BANDIT, 26);
    FIGHT_TACTIC = FAI_HUMAN_BAU;
    B_SETNPCVISUAL(BDT_14019_BANDIT, MALE, HUMHEADFATBALD, FACE_P_BANDIT47, 0, 0x8a56);
    B_GIVENPCTALENTS(BDT_14019_BANDIT);
    B_SETFIGHTSKILLS(BDT_14019_BANDIT, 29);
    MDL_APPLYOVERLAYMDS(BDT_14019_BANDIT, HUMANSBAUFIGHTMDS);
    MDL_APPLYOVERLAYMDS(BDT_14019_BANDIT, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_14019_BANDIT);
    DAILY_ROUTINE = RTN_START_14019;
}

func void RTN_START_14019() {
    TA_FIREPLACE(7, 0, 22, 0, "S1_BANDIT_02");
    TA_FIREPLACE(22, 0, 7, 0, "S1_BANDIT_02");
}

