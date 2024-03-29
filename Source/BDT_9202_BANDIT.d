instance BDT_9202_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BANDIT;
    GUILD = GIL_NONE;
    ID = 9202;
    VOICE = 66;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BDT_9202_BANDIT, 12);
    FIGHT_TACTIC = FAI_HUMAN_BAU;
    AIVAR[15] = TRUE;
    EQUIPITEM(BDT_9202_BANDIT, 39592);
    AIVAR[95] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETNPCVISUAL(BDT_9202_BANDIT, MALE, HUMHEADPYMONTENEU, FACE_N_BANDIT81, 1, 35439);
    MDL_APPLYOVERLAYMDS(BDT_9202_BANDIT, HUMANSBAUFIGHTMDS);
    B_CREATEAMBIENTINV(BDT_9202_BANDIT);
    B_GIVENPCTALENTS(BDT_9202_BANDIT);
    B_SETFIGHTSKILLS(BDT_9202_BANDIT, 25);
    DAILY_ROUTINE = RTN_START_9202;
}

func void RTN_START_9202() {
    TA_SIT_CHAIR(20, 0, 3, 0, "HARBOUR_STORAGE01_11");
    TA_SIT_CHAIR(3, 0, 20, 0, "HARBOUR_STORAGE01_11");
}

func void RTN_FIGHT_9202() {
    TA_KILLMARVIN(20, 0, 3, 0, "HARBOUR_STORAGE01_11");
    TA_KILLMARVIN(3, 0, 20, 0, "HARBOUR_STORAGE01_11");
}

func void RTN_TOT_9202() {
    TA_PLUNDER(20, 0, 3, 0, TOT);
    TA_PLUNDER(3, 0, 20, 0, TOT);
}

