instance NONE_10083_VOLKERGUARD_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_VOLKERGUARD;
    GUILD = GIL_BDT;
    ID = 50139;
    VOICE = 23;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_10083_VOLKERGUARD_Q602, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_10083_VOLKERGUARD_Q602, MALE, HUMHEADPYMONTENEU, FACE_N_VOLKERGUARD38, 1, 35479);
    MDL_APPLYOVERLAYMDS(NONE_10083_VOLKERGUARD_Q602, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_10083_VOLKERGUARD_Q602);
    B_GIVENPCTALENTS(NONE_10083_VOLKERGUARD_Q602);
    B_SETFIGHTSKILLS(NONE_10083_VOLKERGUARD_Q602, 60);
    MDL_APPLYOVERLAYMDS(NONE_10083_VOLKERGUARD_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(NONE_10083_VOLKERGUARD_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(NONE_10083_VOLKERGUARD_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(NONE_10083_VOLKERGUARD_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50139;
}

func void RTN_START_50139() {
    TA_STAND_ARMSCROSSED_Q602(8, 0, 23, 0, "PARTE3_BLAKE");
    TA_STAND_ARMSCROSSED_Q602(23, 0, 8, 0, "PARTE3_BLAKE");
}

func void RTN_FIGHT_50139() {
    TA_KILLMARVIN(8, 0, 11, 0, "PARTE3_BLAKE");
    TA_KILLMARVIN(11, 0, 8, 0, "PARTE3_BLAKE");
}

