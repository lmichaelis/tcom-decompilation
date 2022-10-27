instance MIL_13506_SIGUND(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_SIGUND;
    GUILD = GIL_MIL;
    ID = 0x34c2;
    VOICE = 66;
    LEVEL = 0;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_13506_SIGUND, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13506_SIGUND, MALE, HUMHEADTHIEF, FACE_L_SIGUND, 2, 0x8aa0);
    MDL_APPLYOVERLAYMDS(MIL_13506_SIGUND, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13506_SIGUND);
    B_GIVENPCTALENTS(MIL_13506_SIGUND);
    B_SETFIGHTSKILLS(MIL_13506_SIGUND, 40);
    DAILY_ROUTINE = RTN_START_13506;
}

func void RTN_START_13506() {
    TA_STAYSTRAIGHT(7, 0, 15, 30, "SLUMS_QA304_SPOT_03");
    TA_STAYSTRAIGHT(15, 30, 7, 0, "SLUMS_QA304_SPOT_03");
}

func void RTN_QA304_INN_13506() {
    TA_SIT_CHAIR_DRINK(7, 0, 15, 30, "HARBOUR_TAVERN_GUEST_09");
    TA_SIT_CHAIR_DRINK(15, 30, 7, 0, "HARBOUR_TAVERN_GUEST_09");
}

func void RTN_TOT_13506() {
    TA_SIT_CHAIR_DRINK(7, 0, 15, 30, TOT);
    TA_SIT_CHAIR_DRINK(15, 30, 7, 0, TOT);
}

