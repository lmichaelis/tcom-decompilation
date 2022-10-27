instance BDT_9018_TROLLHUNTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_TROLLHUNTER;
    GUILD = GIL_BDT;
    ID = 0x233a;
    VOICE = 53;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_9018_TROLLHUNTER, 45);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_9018_TROLLHUNTER, MALE, HUMHEADFIGHTER, FACE_P_BANDIT60, 0, 0x8a74);
    B_CREATEAMBIENTINV(BDT_9018_TROLLHUNTER);
    MDL_APPLYOVERLAYMDS(BDT_9018_TROLLHUNTER, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_9018_TROLLHUNTER);
    B_GIVENPCTALENTS(BDT_9018_TROLLHUNTER);
    B_SETFIGHTSKILLS(BDT_9018_TROLLHUNTER, 60);
    DAILY_ROUTINE = RTN_START_9018;
}

func void RTN_START_9018() {
    TA_READ(8, 0, 12, 0, "PART15_TROLLHUNTER_02");
    TA_READ(12, 0, 8, 0, "PART15_TROLLHUNTER_02");
}

