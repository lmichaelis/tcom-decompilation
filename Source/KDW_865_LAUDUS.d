instance KDW_865_LAUDUS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_LAUDUS;
    GUILD = GIL_KDW;
    ID = 865;
    VOICE = 22;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[51] = MAGIC_ALWAYS;
    B_SETATTRIBUTESTOLEVEL(KDW_865_LAUDUS, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(KDW_865_LAUDUS, 33997);
    B_SETNPCVISUAL(KDW_865_LAUDUS, MALE, HUMHEADPYMONTENEU, FACE_P_LAUDUS, 0, 33924);
    MDL_APPLYOVERLAYMDS(KDW_865_LAUDUS, HUMANSMAGEMDS);
    B_GIVENPCTALENTS(KDW_865_LAUDUS);
    B_SETFIGHTSKILLS(KDW_865_LAUDUS, 45);
    DAILY_ROUTINE = RTN_START_865;
    AIVAR[74] = NPC_SQ225_KNOWGERHARD;
}

func void RTN_START_865() {
    TA_CHAIR_WRITING(7, 0, 18, 0, "HARBOUR_TEMPLE_THRONE_01");
    TA_PREACH_LAUDUS(18, 0, 19, 0, "HARBOUR_TEMPLE_PRAY");
    TA_CHAIR_WRITING(19, 0, 7, 0, "HARBOUR_TEMPLE_THRONE_01");
}

