instance NONE_50202_VOLKERGUARD_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_VOLKERGUARD;
    GUILD = GIL_NONE;
    ID = 50202;
    VOICE = 70;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_50202_VOLKERGUARD_Q602, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_50202_VOLKERGUARD_Q602, MALE, HUMHEADFIGHTER, FACE_L_VOLKERGUARD61, 2, 35479);
    MDL_APPLYOVERLAYMDS(NONE_50202_VOLKERGUARD_Q602, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_50202_VOLKERGUARD_Q602);
    B_GIVENPCTALENTS(NONE_50202_VOLKERGUARD_Q602);
    B_SETFIGHTSKILLS(NONE_50202_VOLKERGUARD_Q602, 60);
    MDL_APPLYOVERLAYMDS(NONE_50202_VOLKERGUARD_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(NONE_50202_VOLKERGUARD_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(NONE_50202_VOLKERGUARD_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(NONE_50202_VOLKERGUARD_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50202;
}

func void RTN_START_50202() {
    TA_STAND_ARMSCROSSED(8, 0, 23, 0, "PARTE4_Q602_VINEYARDLEADER_WARRIOR_01");
    TA_STAND_ARMSCROSSED(23, 0, 8, 0, "PARTE4_Q602_VINEYARDLEADER_WARRIOR_01");
}

