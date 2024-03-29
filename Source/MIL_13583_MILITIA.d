instance MIL_13583_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 13583;
    VOICE = 53;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_13583_MILITIA, 28);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13583_MILITIA, MALE, HUMHEADTHIEF, FACE_B_MILITIA93, 3, 35488);
    MDL_APPLYOVERLAYMDS(MIL_13583_MILITIA, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13583_MILITIA);
    B_GIVENPCTALENTS(MIL_13583_MILITIA);
    B_SETFIGHTSKILLS(MIL_13583_MILITIA, 45);
    DAILY_ROUTINE = RTN_TOT_13583;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_13583() {
    TA_STAND_GUARDING(6, 0, 17, 0, "HARBOUR_QM201_GUARD");
    TA_STAND_GUARDING(17, 0, 6, 0, "HARBOUR_QM201_GUARD");
}

func void RTN_TOT_13583() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

