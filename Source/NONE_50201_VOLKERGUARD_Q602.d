instance NONE_50201_VOLKERGUARD_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_VOLKERGUARD;
    GUILD = GIL_NONE;
    ID = 50201;
    VOICE = 66;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_50201_VOLKERGUARD_Q602, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_50201_VOLKERGUARD_Q602, MALE, HUMHEADWITHOUTPONY, FACE_N_VOLKERGUARD60, 1, 35479);
    MDL_APPLYOVERLAYMDS(NONE_50201_VOLKERGUARD_Q602, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_50201_VOLKERGUARD_Q602);
    B_GIVENPCTALENTS(NONE_50201_VOLKERGUARD_Q602);
    B_SETFIGHTSKILLS(NONE_50201_VOLKERGUARD_Q602, 60);
    MDL_APPLYOVERLAYMDS(NONE_50201_VOLKERGUARD_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(NONE_50201_VOLKERGUARD_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(NONE_50201_VOLKERGUARD_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(NONE_50201_VOLKERGUARD_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50201;
}

func void RTN_START_50201() {
    TA_STAND_ARMSCROSSED(8, 0, 23, 0, "PARTE4_Q602_VINEYARDLEADER_WARRIOR_02");
    TA_STAND_ARMSCROSSED(23, 0, 8, 0, "PARTE4_Q602_VINEYARDLEADER_WARRIOR_02");
}

