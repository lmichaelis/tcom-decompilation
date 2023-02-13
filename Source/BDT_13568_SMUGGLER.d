instance BDT_13568_SMUGGLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_COYOTE;
    GUILD = GIL_BDT;
    ID = 13568;
    VOICE = 71;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_13568_SMUGGLER, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13568_SMUGGLER, MALE, HUMHEADWITHOUTPONY, FACE_N_SMUGGLER11, 1, 35417);
    MDL_APPLYOVERLAYMDS(BDT_13568_SMUGGLER, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13568_SMUGGLER);
    B_GIVENPCTALENTS(BDT_13568_SMUGGLER);
    B_SETFIGHTSKILLS(BDT_13568_SMUGGLER, 45);
    DAILY_ROUTINE = RTN_START_13568;
}

func void RTN_START_13568() {
    TA_SIT_BED(6, 0, 20, 0, "PART1_CAVE_IN_28");
    TA_SIT_BED(20, 0, 6, 0, "PART1_CAVE_IN_28");
}

func void RTN_QA401_FIGHT_WAIT_13568() {
    TA_STAYSTRAIGHT_NOIQ(6, 0, 20, 0, "PART1_CAVE_IN_28");
    TA_STAYSTRAIGHT_NOIQ(20, 0, 6, 0, "PART1_CAVE_IN_28");
}

