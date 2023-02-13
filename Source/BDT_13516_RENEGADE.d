instance BDT_13516_RENEGADE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_RENEGADE;
    GUILD = GIL_BDT;
    ID = 13516;
    VOICE = 55;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_13516_RENEGADE, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETNPCVISUAL(BDT_13516_RENEGADE, MALE, HUMHEADPONY, FACE_N_RENEGADE10, 1, 35509);
    MDL_APPLYOVERLAYMDS(BDT_13516_RENEGADE, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13516_RENEGADE);
    B_GIVENPCTALENTS(BDT_13516_RENEGADE);
    B_SETFIGHTSKILLS(BDT_13516_RENEGADE, 45);
    DAILY_ROUTINE = RTN_START_13516;
}

func void RTN_START_13516() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, "PART9_QM401_FIGHTSPOT_21");
    TA_STAYSTRAIGHT(6, 0, 1, 0, "PART9_QM401_FIGHTSPOT_21");
}

