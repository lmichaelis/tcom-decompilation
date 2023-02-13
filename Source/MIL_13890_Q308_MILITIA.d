instance MIL_13890_Q308_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 13890;
    VOICE = 61;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_13890_Q308_MILITIA, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13890_Q308_MILITIA, MALE, HUMHEADTHIEF, FACE_N_MILITIA105, 1, 35488);
    MDL_APPLYOVERLAYMDS(MIL_13890_Q308_MILITIA, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13890_Q308_MILITIA);
    B_GIVENPCTALENTS(MIL_13890_Q308_MILITIA);
    B_SETFIGHTSKILLS(MIL_13890_Q308_MILITIA, 40);
    DAILY_ROUTINE = RTN_START_13890;
    AIVAR[74] = NPC_Q308_IAMHELPINGREFUGEE;
}

func void RTN_START_13890() {
    TA_STAND_GUARDING(8, 0, 22, 0, "HARBOUR_Q308_MILITIA_03");
    TA_STAND_GUARDING(22, 0, 8, 0, "HARBOUR_Q308_MILITIA_03");
}

func void RTN_TOT_13890() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

