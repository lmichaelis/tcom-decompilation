instance BDT_11250_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BANDIT;
    GUILD = GIL_BDT;
    ID = 11250;
    VOICE = 21;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_11250_BANDIT, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_11250_BANDIT, MALE, HUMHEADTHIEF, FACE_N_BANDIT14, 1, 35398);
    MDL_APPLYOVERLAYMDS(BDT_11250_BANDIT, HUMANS1HST1);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_11250_BANDIT);
    B_GIVENPCTALENTS(BDT_11250_BANDIT);
    B_SETFIGHTSKILLS(BDT_11250_BANDIT, 10);
    DAILY_ROUTINE = RTN_START_11250;
}

func void RTN_START_11250() {
    TA_PLUNDER(8, 0, 9, 0, "S1_QA401_ROOM_BANDIT_04");
    TA_PLUNDER(9, 0, 8, 0, "S1_QA401_ROOM_BANDIT_04");
}

func void RTN_TOT_11250() {
    TA_STAND_EATING(8, 0, 9, 0, TOT);
    TA_STAND_EATING(9, 0, 8, 0, TOT);
}

