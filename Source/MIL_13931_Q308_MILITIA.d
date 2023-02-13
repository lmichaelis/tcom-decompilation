instance MIL_13931_Q308_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 13931;
    VOICE = 61;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_13931_Q308_MILITIA, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13931_Q308_MILITIA, MALE, HUMHEADFIGHTER, FACE_L_MILITIA117, 2, 35501);
    MDL_APPLYOVERLAYMDS(MIL_13931_Q308_MILITIA, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13931_Q308_MILITIA);
    B_GIVENPCTALENTS(MIL_13931_Q308_MILITIA);
    B_SETFIGHTSKILLS(MIL_13931_Q308_MILITIA, 60);
    DAILY_ROUTINE = RTN_START_13931;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_13931() {
    TA_SMALLTALK(8, 0, 22, 0, "PARTM4_GUARD_Q308_01");
    TA_SMALLTALK(22, 0, 8, 0, "PARTM4_GUARD_Q308_01");
}

func void RTN_TOT_13931() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}
