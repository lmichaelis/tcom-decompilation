instance NONE_13547_BODYGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BODYGUARD;
    GUILD = GIL_NONE;
    ID = 13547;
    VOICE = 63;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13547_BODYGUARD, 38);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13547_BODYGUARD, MALE, HUMHEADFIGHTER, FACE_N_BODYGUARD_04, 1, 35403);
    MDL_APPLYOVERLAYMDS(NONE_13547_BODYGUARD, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13547_BODYGUARD);
    B_GIVENPCTALENTS(NONE_13547_BODYGUARD);
    B_SETFIGHTSKILLS(NONE_13547_BODYGUARD, 45);
    DAILY_ROUTINE = RTN_START_13547;
}

func void RTN_START_13547() {
    TA_STAND_ARMSCROSSED(6, 0, 17, 0, TOT2);
    TA_STAND_ARMSCROSSED(17, 0, 6, 0, "SLUMS_QA401_BODYGUARD_02");
}

func void RTN_TOT_13547() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}
