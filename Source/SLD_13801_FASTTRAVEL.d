instance SLD_13801_FASTTRAVEL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARAXOS_FASTTRAVEL;
    GUILD = GIL_SLD;
    ID = 13801;
    VOICE = 46;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_13801_FASTTRAVEL, 12);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_13801_FASTTRAVEL, MALE, HUMHEADFLEXNEU, FACE_B_ARAXOSEVENT, 3, 35465);
    MDL_APPLYOVERLAYMDS(SLD_13801_FASTTRAVEL, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13801_FASTTRAVEL);
    B_GIVENPCTALENTS(SLD_13801_FASTTRAVEL);
    B_SETFIGHTSKILLS(SLD_13801_FASTTRAVEL, 50);
    DAILY_ROUTINE = RTN_START_13801;
}

func void RTN_START_13801() {
    TA_STAYSTRAIGHT(7, 0, 15, 30, "PARTM1_PATH_88A");
    TA_STAYSTRAIGHT(15, 30, 7, 0, "PARTM1_PATH_88A");
}

func void RTN_TALK_13801() {
    TA_SMALLTALK(7, 0, 22, 0, "PARTM1_PATH_88A");
    TA_SMALLTALK(22, 0, 7, 0, "PARTM1_PATH_88A");
}

func void RTN_TOT_13801() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT2);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT2);
}
