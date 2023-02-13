instance MIL_12150_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 12150;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_12150_MILITIA, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_12150_MILITIA, MALE, HUMHEADFIGHTER, FACE_N_MILITIA120, 1, 35482);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_12150_MILITIA);
    MDL_APPLYOVERLAYMDS(MIL_12150_MILITIA, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(MIL_12150_MILITIA);
    B_SETFIGHTSKILLS(MIL_12150_MILITIA, 45);
    DAILY_ROUTINE = RTN_START_12150;
    AIVAR[70] = NPC_AMB_MINE_MILITIA;
}

func void RTN_START_12150() {
    TA_STAND_ARMSCROSSED(6, 0, 10, 0, "PART10_MINE_STAND_04");
    TA_COOK_PAN(10, 0, 12, 0, "PART10_MINE_PAN_01");
    TA_SMALLTALK(12, 0, 20, 0, "PART10_MINE_SMALLTALK_03");
    TA_FIREPLACE(20, 0, 22, 15, "PART10_MINE_15");
    TA_SLEEP(22, 15, 6, 0, "PART10_HOUSE1_SLEEP_02");
}
