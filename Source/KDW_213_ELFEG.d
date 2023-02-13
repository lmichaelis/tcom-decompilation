instance KDW_213_ELFEG(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_ELFEG;
    GUILD = GIL_KDW;
    ID = 213;
    VOICE = 67;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[51] = MAGIC_ALWAYS;
    B_SETATTRIBUTESTOLEVEL(KDW_213_ELFEG, 40);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(KDW_213_ELFEG, MALE, HUMHEADPONY, FACE_N_ELFEG, 1, 33924);
    MDL_APPLYOVERLAYMDS(KDW_213_ELFEG, HUMANSMAGEMDS);
    B_CREATEAMBIENTINV(KDW_213_ELFEG);
    B_GIVENPCTALENTS(KDW_213_ELFEG);
    B_SETFIGHTSKILLS(KDW_213_ELFEG, 40);
    DAILY_ROUTINE = RTN_START_213;
}

func void RTN_START_213() {
    TA_STAYSTRAIGHT(8, 0, 21, 0, "PART8_LAND_47");
    TA_STAYSTRAIGHT(21, 0, 8, 0, "PART8_LAND_47");
}

