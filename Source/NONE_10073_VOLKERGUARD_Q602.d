instance NONE_10073_VOLKERGUARD_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_VOLKERGUARD;
    GUILD = GIL_NONE;
    ID = 50134;
    VOICE = 66;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_10073_VOLKERGUARD_Q602, 40);
    FIGHT_TACTIC = FAI_HUMAN_NOJUMP;
    B_SETNPCVISUAL(NONE_10073_VOLKERGUARD_Q602, MALE, HUMHEADTHIEF, FACE_N_VOLKERGUARD33, 1, 35479);
    MDL_APPLYOVERLAYMDS(NONE_10073_VOLKERGUARD_Q602, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_10073_VOLKERGUARD_Q602);
    B_GIVENPCTALENTS(NONE_10073_VOLKERGUARD_Q602);
    B_SETFIGHTSKILLS(NONE_10073_VOLKERGUARD_Q602, 60);
    MDL_APPLYOVERLAYMDS(NONE_10073_VOLKERGUARD_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(NONE_10073_VOLKERGUARD_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(NONE_10073_VOLKERGUARD_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(NONE_10073_VOLKERGUARD_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50134;
}

func void RTN_START_50134() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, "PARTE1_WOLFSSON_06");
    TA_STAYSTRAIGHT(23, 0, 8, 0, "PARTE1_WOLFSSON_06");
}
