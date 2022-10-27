instance NONE_10064_VOLKERGUARD_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_VOLKERGUARD;
    GUILD = GIL_NONE;
    ID = 0xc3d1;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_10064_VOLKERGUARD_Q602, 40);
    FIGHT_TACTIC = FAI_HUMAN_NOJUMP;
    B_SETNPCVISUAL(NONE_10064_VOLKERGUARD_Q602, MALE, HUMHEADBALD, FACE_N_VOLKERGUARD28, 1, 0x8a97);
    MDL_APPLYOVERLAYMDS(NONE_10064_VOLKERGUARD_Q602, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_10064_VOLKERGUARD_Q602);
    B_GIVENPCTALENTS(NONE_10064_VOLKERGUARD_Q602);
    B_SETFIGHTSKILLS(NONE_10064_VOLKERGUARD_Q602, 70);
    MDL_APPLYOVERLAYMDS(NONE_10064_VOLKERGUARD_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(NONE_10064_VOLKERGUARD_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(NONE_10064_VOLKERGUARD_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(NONE_10064_VOLKERGUARD_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50129;
}

func void RTN_START_50129() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 23, 0, "PARTE1_VOLKERGUARD_05");
    TA_STAYSTRAIGHT_NOIQ(23, 0, 8, 0, "PARTE1_VOLKERGUARD_05");
}

func void RTN_Q602_FIGHT_50129() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, "PARTE1_VOLKERGUARD_05");
    TA_STAYSTRAIGHT(23, 0, 8, 0, "PARTE1_VOLKERGUARD_05");
}

