instance BDT_9010_LOOTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_LOOTER;
    GUILD = GIL_BDT;
    ID = 9010;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_9010_LOOTER, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_9010_LOOTER, MALE, HUMHEADBALD, FACE_B_BANDIT52, 3, 35417);
    B_CREATEAMBIENTINV(BDT_9010_LOOTER);
    MDL_APPLYOVERLAYMDS(BDT_9010_LOOTER, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_9010_LOOTER);
    B_GIVENPCTALENTS(BDT_9010_LOOTER);
    B_SETFIGHTSKILLS(BDT_9010_LOOTER, 35);
    DAILY_ROUTINE = RTN_START_9010;
}

func void RTN_START_9010() {
    TA_STAND_DRINKING(8, 0, 12, 0, "PART15_PATH_309");
    TA_STAND_DRINKING(12, 0, 8, 0, "PART15_PATH_309");
}

