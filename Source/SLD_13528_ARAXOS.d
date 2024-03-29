instance SLD_13528_ARAXOS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SOELDNER;
    GUILD = GIL_SLD;
    ID = 13528;
    VOICE = 14;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_13528_ARAXOS, 45);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_13528_ARAXOS, MALE, HUMHEADBALD, FACE_P_ARAXOS28, 0, 35470);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13528_ARAXOS);
    MDL_APPLYOVERLAYMDS(SLD_13528_ARAXOS, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(SLD_13528_ARAXOS, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(SLD_13528_ARAXOS, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(SLD_13528_ARAXOS, HUMANSCBOWT2);
    B_GIVENPCTALENTS(SLD_13528_ARAXOS);
    B_SETFIGHTSKILLS(SLD_13528_ARAXOS, 0);
    DAILY_ROUTINE = RTN_START_13528;
    AIVAR[74] = NPC_KQ407_ARMY;
}

func void RTN_START_13528() {
    TA_SIT_SLAVSQUAT(1, 0, 6, 0, "PART1_SQ503_ARAXOS_03");
    TA_SIT_SLAVSQUAT(6, 0, 1, 0, "PART1_SQ503_ARAXOS_03");
}

func void RTN_SQ503_HAVEN_13528() {
    TA_SIT_SLAVSQUAT(1, 0, 6, 0, "P17_HAVEN_SQ503_ARAXOS_01");
    TA_SIT_SLAVSQUAT(6, 0, 1, 0, "P17_HAVEN_SQ503_ARAXOS_01");
}

func void RTN_TOT_13528() {
    TA_SIT_SLAVSQUAT(1, 0, 6, 0, TOT);
    TA_SIT_SLAVSQUAT(6, 0, 1, 0, TOT);
}

