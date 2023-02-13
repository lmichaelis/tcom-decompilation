instance BDT_9201_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BANDIT;
    GUILD = GIL_NONE;
    ID = 9201;
    VOICE = 14;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BDT_9201_BANDIT, 12);
    FIGHT_TACTIC = FAI_HUMAN_BAU;
    AIVAR[15] = TRUE;
    EQUIPITEM(BDT_9201_BANDIT, 34021);
    AIVAR[95] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETNPCVISUAL(BDT_9201_BANDIT, MALE, HUMHEADFLAILNEU, FACE_N_BANDIT80, 1, 35417);
    MDL_APPLYOVERLAYMDS(BDT_9201_BANDIT, HUMANSBAUFIGHTMDS);
    B_CREATEAMBIENTINV(BDT_9201_BANDIT);
    B_GIVENPCTALENTS(BDT_9201_BANDIT);
    B_SETFIGHTSKILLS(BDT_9201_BANDIT, 25);
    DAILY_ROUTINE = RTN_START_9201;
}

func void RTN_START_9201() {
    TA_SMOKE_WATERPIPE(20, 0, 3, 0, "HARBOUR_STORAGE01_12");
    TA_SMOKE_WATERPIPE(3, 0, 20, 0, "HARBOUR_STORAGE01_12");
}

func void RTN_FIGHT_9201() {
    TA_KILLMARVIN(20, 0, 3, 0, "HARBOUR_STORAGE01_12");
    TA_KILLMARVIN(3, 0, 20, 0, "HARBOUR_STORAGE01_12");
}

func void RTN_TOT_9201() {
    TA_PLUNDER(20, 0, 3, 0, TOT);
    TA_PLUNDER(3, 0, 20, 0, TOT);
}

