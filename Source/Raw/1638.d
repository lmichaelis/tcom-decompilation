instance NONE_6279_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SHADYCHARACTER;
    GUILD = GIL_NONE;
    ID = 0x1887;
    VOICE = 51;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6279_BANDIT, 10);
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[95] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETNPCVISUAL(NONE_6279_BANDIT, MALE, HUMHEADTHIEF, FACE_N_NILS, 1, 0x8a63);
    MDL_APPLYOVERLAYMDS(NONE_6279_BANDIT, HUMANSRELAXEDMDS);
    EQUIPITEM(NONE_6279_BANDIT, 0x84de);
    B_CREATEAMBIENTINV(NONE_6279_BANDIT);
    B_GIVENPCTALENTS(NONE_6279_BANDIT);
    B_SETFIGHTSKILLS(NONE_6279_BANDIT, 15);
    DAILY_ROUTINE = RTN_START_6279;
}

func void RTN_START_6279() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 22, 0, "SLUMS_STORAGE02_Q206_BANDIT_01");
    TA_STAYSTRAIGHT_NOIQ(22, 0, 8, 0, "SLUMS_STORAGE02_Q206_BANDIT_01");
}

func void RTN_Q206_FIGHT_6279() {
    TA_KILLMARVIN(8, 0, 22, 0, "SLUMS_STORAGE02_Q206_BANDIT_01");
    TA_KILLMARVIN(22, 0, 8, 0, "SLUMS_STORAGE02_Q206_BANDIT_01");
}

func void RTN_TOT_6279() {
    TA_STAND_GUARDING(8, 0, 22, 0, TOT);
    TA_STAND_GUARDING(22, 0, 8, 0, TOT);
}

