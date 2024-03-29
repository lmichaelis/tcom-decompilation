instance NONE_10109_VOLKERGUARD_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_VOLKERGUARD;
    GUILD = GIL_BDT;
    ID = 50150;
    VOICE = 22;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_10109_VOLKERGUARD_Q602, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_10109_VOLKERGUARD_Q602, MALE, HUMHEADWITHOUTPONY, FACE_P_VOLKERGUARD49, 0, 35479);
    MDL_APPLYOVERLAYMDS(NONE_10109_VOLKERGUARD_Q602, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_10109_VOLKERGUARD_Q602);
    B_GIVENPCTALENTS(NONE_10109_VOLKERGUARD_Q602);
    B_SETFIGHTSKILLS(NONE_10109_VOLKERGUARD_Q602, 60);
    MDL_APPLYOVERLAYMDS(NONE_10109_VOLKERGUARD_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(NONE_10109_VOLKERGUARD_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(NONE_10109_VOLKERGUARD_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(NONE_10109_VOLKERGUARD_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50150;
}

func void RTN_START_50150() {
    TA_STAND_ARMSCROSSED_Q602(8, 0, 23, 0, "PARTM4_PATH_92");
    TA_STAND_ARMSCROSSED_Q602(23, 0, 8, 0, "PARTM4_PATH_92");
}

