instance MIL_13916_Q308_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 13916;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_13916_Q308_MILITIA, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13916_Q308_MILITIA, MALE, HUMHEADFIGHTER, FACE_N_MILITIA109, 1, 35488);
    MDL_APPLYOVERLAYMDS(MIL_13916_Q308_MILITIA, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13916_Q308_MILITIA);
    B_GIVENPCTALENTS(MIL_13916_Q308_MILITIA);
    B_SETFIGHTSKILLS(MIL_13916_Q308_MILITIA, 40);
    DAILY_ROUTINE = RTN_START_13916;
    AIVAR[74] = NPC_Q308_IAMHELPINGREFUGEE;
}

func void RTN_START_13916() {
    TA_WAITING(8, 0, 22, 0, "SLUMS_Q308_MILITIA_03");
    TA_WAITING(22, 0, 8, 0, "SLUMS_Q308_MILITIA_03");
}

func void RTN_TOT_13916() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}
