instance BDT_11304_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BANDIT;
    GUILD = GIL_BDT;
    ID = 11304;
    VOICE = 35;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_11304_BANDIT, 28);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_11304_BANDIT, MALE, HUMHEADFIGHTER, FACE_B_BANDIT17, BODYTEX_B, 35438);
    MDL_APPLYOVERLAYMDS(BDT_11304_BANDIT, HUMANS1HST1);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_11304_BANDIT);
    B_GIVENPCTALENTS(BDT_11304_BANDIT);
    B_SETFIGHTSKILLS(BDT_11304_BANDIT, 25);
    DAILY_ROUTINE = RTN_START_11304;
}

func void RTN_START_11304() {
    TA_DIG(8, 0, 12, 0, "PART4_BDT_12");
    TA_DIG(12, 0, 8, 0, "PART4_BDT_12");
}

func void RTN_TOT_11304() {
    TA_LEAN(8, 0, 12, 0, TOT);
    TA_LEAN(12, 0, 8, 0, TOT);
}

