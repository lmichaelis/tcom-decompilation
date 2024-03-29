instance BDT_9049_LOOTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_LOOTER;
    GUILD = GIL_BDT;
    ID = 9049;
    VOICE = 70;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_9049_LOOTER, 24);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_9049_LOOTER, MALE, HUMHEADFIGHTER, FACE_N_BANDIT76, 1, 35417);
    B_CREATEAMBIENTINV(BDT_9049_LOOTER);
    MDL_APPLYOVERLAYMDS(BDT_9049_LOOTER, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_9049_LOOTER);
    B_GIVENPCTALENTS(BDT_9049_LOOTER);
    B_SETFIGHTSKILLS(BDT_9049_LOOTER, 35);
    DAILY_ROUTINE = RTN_START_9049;
}

func void RTN_START_9049() {
    TA_DIG(8, 0, 12, 0, "PART1_MOB_16");
    TA_DIG(12, 0, 8, 0, "PART1_MOB_16");
}

