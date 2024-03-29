instance BDT_9009_LOOTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_LOOTER;
    GUILD = GIL_BDT;
    ID = 9009;
    VOICE = 11;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_9009_LOOTER, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_9009_LOOTER, MALE, HUMHEADBALD, FACE_P_BANDIT51, 0, 35403);
    B_CREATEAMBIENTINV(BDT_9009_LOOTER);
    MDL_APPLYOVERLAYMDS(BDT_9009_LOOTER, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_9009_LOOTER);
    B_GIVENPCTALENTS(BDT_9009_LOOTER);
    B_SETFIGHTSKILLS(BDT_9009_LOOTER, 35);
    DAILY_ROUTINE = RTN_START_9009;
}

func void RTN_START_9009() {
    TA_WAITING(8, 0, 12, 0, "PART15_COPRSEEVENT_01");
    TA_WAITING(12, 0, 8, 0, "PART15_COPRSEEVENT_01");
}

