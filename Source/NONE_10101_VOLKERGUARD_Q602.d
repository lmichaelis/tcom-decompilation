instance NONE_10101_VOLKERGUARD_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_VOLKERGUARD;
    GUILD = GIL_BDT;
    ID = 50142;
    VOICE = 42;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_10101_VOLKERGUARD_Q602, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_10101_VOLKERGUARD_Q602, MALE, HUMHEADBALD, FACE_N_VOLKERGUARD41, 1, 35479);
    MDL_APPLYOVERLAYMDS(NONE_10101_VOLKERGUARD_Q602, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_10101_VOLKERGUARD_Q602);
    B_GIVENPCTALENTS(NONE_10101_VOLKERGUARD_Q602);
    B_SETFIGHTSKILLS(NONE_10101_VOLKERGUARD_Q602, 60);
    MDL_APPLYOVERLAYMDS(NONE_10101_VOLKERGUARD_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(NONE_10101_VOLKERGUARD_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(NONE_10101_VOLKERGUARD_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(NONE_10101_VOLKERGUARD_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50142;
}

func void RTN_START_50142() {
    TA_STAND_ARMSCROSSED_Q602(8, 0, 23, 0, "PARTM4_ATTEMPT_MILITIA_03");
    TA_STAND_ARMSCROSSED_Q602(23, 0, 8, 0, "PARTM4_ATTEMPT_MILITIA_03");
}

