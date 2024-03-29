instance KDW_889_PATRACJAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_PATRACJAN;
    GUILD = GIL_KDW;
    ID = 889;
    VOICE = 53;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[51] = MAGIC_ALWAYS;
    B_SETATTRIBUTESTOLEVEL(KDW_889_PATRACJAN, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(KDW_889_PATRACJAN, 33997);
    B_SETNPCVISUAL(KDW_889_PATRACJAN, MALE, HUMHEADPONY, FACE_N_PATRACJAN, 1, 33573);
    MDL_APPLYOVERLAYMDS(KDW_889_PATRACJAN, HUMANSMAGEMDS);
    B_GIVENPCTALENTS(KDW_889_PATRACJAN);
    B_SETFIGHTSKILLS(KDW_889_PATRACJAN, 40);
    DAILY_ROUTINE = RTN_START_889;
    AIVAR[74] = NPC_SQ225_KNOWGERHARD;
}

func void RTN_START_889() {
    TA_STAND_GUARDING(7, 0, 18, 0, "HARBOUR_TEMPLE_PRAY");
    TA_READ_BOOKSTAND(18, 0, 7, 0, "HARBOUR_TEMPLE_BOOKSTAND_01");
}

