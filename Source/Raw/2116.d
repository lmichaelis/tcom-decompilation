instance BDT_13566_SMUGGLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_COYOTE;
    GUILD = GIL_BDT;
    ID = 0x34fe;
    VOICE = 57;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_13566_SMUGGLER, 39);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13566_SMUGGLER, MALE, HUMHEADFATBALD, FACE_N_SMUGGLER09, 1, 0x8a4b);
    MDL_APPLYOVERLAYMDS(BDT_13566_SMUGGLER, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13566_SMUGGLER);
    B_GIVENPCTALENTS(BDT_13566_SMUGGLER);
    B_SETFIGHTSKILLS(BDT_13566_SMUGGLER, 45);
    DAILY_ROUTINE = RTN_START_13566;
}

func void RTN_START_13566() {
    TA_FIREPLACE(6, 0, 20, 0, "PART1_CAVE_IN_17");
    TA_FIREPLACE(20, 0, 6, 0, "PART1_CAVE_IN_17");
}

func void RTN_QA401_FIGHT_WAIT_13566() {
    TA_STAYSTRAIGHT_NOIQ(6, 0, 20, 0, "PART1_CAVE_IN_17");
    TA_STAYSTRAIGHT_NOIQ(20, 0, 6, 0, "PART1_CAVE_IN_17");
}
