instance MIL_11141_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 0x2b85;
    VOICE = 25;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_11141_MILITIA, 27);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_11141_MILITIA, MALE, HUMHEADBALD, FACE_P_MILITIA72, 0, 0x8aa0);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_11141_MILITIA);
    MDL_APPLYOVERLAYMDS(MIL_11141_MILITIA, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(MIL_11141_MILITIA);
    B_SETFIGHTSKILLS(MIL_11141_MILITIA, 60);
    DAILY_ROUTINE = RTN_START_11141;
    AIVAR[74] = NPC_MILITIAMINE_IAMMILITIA;
    AIVAR[70] = NPC_AMB_MINE_MILITIA;
}

func void RTN_START_11141() {
    TA_SIT_CHAIR_EAT(6, 0, 7, 0, "PART10_MINE_CHAIR_03");
    TA_STAND_ARMSCROSSED(7, 0, 19, 0, "PART10_MINE_42");
    TA_PRAY_INNOS(19, 0, 23, 0, "PART10_MINE_PRAY");
    TA_SLEEP(23, 0, 6, 0, "PART10_HOUSE3_SLEEP_03");
}

func void RTN_SQ311_MALENDEAD_11141() {
    TA_STAND_ARMSCROSSED(6, 0, 11, 0, "PART10_MINE_42");
    TA_STAND_ARMSCROSSED(11, 0, 6, 0, "PART10_MINE_42");
}

