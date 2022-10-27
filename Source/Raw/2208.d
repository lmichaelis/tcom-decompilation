instance BDT_11305_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BANDIT;
    GUILD = GIL_BDT;
    ID = 0x2c29;
    VOICE = 24;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_11305_BANDIT, 28);
    FIGHT_TACTIC = FAI_HUMAN_BAU;
    B_SETNPCVISUAL(BDT_11305_BANDIT, MALE, HUMHEADBALD, FACE_N_BANDIT20, BODYTEX_N, 0x8a6f);
    MDL_APPLYOVERLAYMDS(BDT_11305_BANDIT, HUMANSBAUFIGHTMDS);
    EQUIPITEM(BDT_11305_BANDIT, 0x84e0);
    B_CREATEAMBIENTINV(BDT_11305_BANDIT);
    B_GIVENPCTALENTS(BDT_11305_BANDIT);
    B_SETFIGHTSKILLS(BDT_11305_BANDIT, 28);
    DAILY_ROUTINE = RTN_START_11305;
}

func void RTN_START_11305() {
    TA_STAND_GUARDING(8, 0, 12, 0, "PART4_BDT_07");
    TA_PEE(12, 0, 12, 30, "PART4_BDT_06");
    TA_STAND_GUARDING(12, 30, 8, 0, "PART4_BDT_07");
}

func void RTN_TOT_11305() {
    TA_LEAN(8, 0, 12, 0, TOT);
    TA_LEAN(12, 0, 8, 0, TOT);
}
