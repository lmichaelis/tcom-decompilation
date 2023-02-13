instance NONE_6280_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOODLUM;
    GUILD = GIL_NONE;
    ID = 6280;
    VOICE = 35;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6280_BANDIT, 11);
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[95] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETNPCVISUAL(NONE_6280_BANDIT, MALE, HUMHEADPONY, FACE_B_FAZIL, 3, 35427);
    MDL_APPLYOVERLAYMDS(NONE_6280_BANDIT, HUMANSRELAXEDMDS);
    EQUIPITEM(NONE_6280_BANDIT, 34021);
    B_CREATEAMBIENTINV(NONE_6280_BANDIT);
    B_GIVENPCTALENTS(NONE_6280_BANDIT);
    B_SETFIGHTSKILLS(NONE_6280_BANDIT, 15);
    DAILY_ROUTINE = RTN_START_6280;
}

func void RTN_START_6280() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 22, 0, "SLUMS_STORAGE02_Q206_BANDIT_02");
    TA_STAYSTRAIGHT_NOIQ(22, 0, 8, 0, "SLUMS_STORAGE02_Q206_BANDIT_02");
}

func void RTN_Q206_FIGHT_6280() {
    TA_KILLMARVIN(6, 0, 7, 0, "SLUMS_STORAGE02_Q206_BANDIT_02");
    TA_KILLMARVIN(7, 0, 6, 0, "SLUMS_STORAGE02_Q206_BANDIT_02");
}

func void RTN_TOT_6280() {
    TA_PLUNDER(8, 0, 22, 0, TOT);
    TA_PLUNDER(22, 0, 8, 0, TOT);
}

