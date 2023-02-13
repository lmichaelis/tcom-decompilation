instance SLD_13700_ARAXOS_GUARDMINE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WACHE;
    GUILD = GIL_SLD;
    ID = 13700;
    VOICE = 38;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_13700_ARAXOS_GUARDMINE, 45);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    MDL_SETVISUAL(SLD_13700_ARAXOS_GUARDMINE, HUMANSMDS);
    MDL_SETVISUALBODY(SLD_13700_ARAXOS_GUARDMINE, "KM_arx_w1", BODYTEX_N, 0, HUMHEADFIGHTER, FACE_N_ARAXOSMINEGUARD, TEETHTEX_NORMAL, -(1));
    MDL_APPLYOVERLAYMDS(SLD_13700_ARAXOS_GUARDMINE, HUMANSMILITIAMDS);
    EQUIPITEM(SLD_13700_ARAXOS_GUARDMINE, 39485);
    B_CREATEAMBIENTINV(SLD_13700_ARAXOS_GUARDMINE);
    B_GIVENPCTALENTS(SLD_13700_ARAXOS_GUARDMINE);
    B_SETFIGHTSKILLS(SLD_13700_ARAXOS_GUARDMINE, 60);
    DAILY_ROUTINE = RTN_START_13700;
}

func void RTN_START_13700() {
    TA_GUARD_PASSAGE(8, 0, 13, 0, "PART7_MINE_ENTER_GUARD");
    TA_GUARD_PASSAGE(13, 0, 8, 0, "PART7_MINE_ENTER_GUARD");
}

func void RTN_INSIDEMINE_13700() {
    TA_STAYSTRAIGHT(8, 0, 13, 0, "PART7_MINE_24");
    TA_STAYSTRAIGHT(13, 0, 8, 0, "PART7_MINE_24");
}

func void RTN_TOT_13700() {
    TA_STAND_WP(8, 0, 13, 0, TOT2);
    TA_STAND_WP(13, 0, 8, 0, TOT2);
}

