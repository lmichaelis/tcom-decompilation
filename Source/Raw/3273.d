instance SLD_13526_ARAXOS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SOELDNER;
    GUILD = GIL_SLD;
    ID = 0x34d6;
    VOICE = 53;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_13526_ARAXOS, 45);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_13526_ARAXOS, MALE, HUMHEADBALD, FACE_B_ARAXOS26, 3, 0x8a8e);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13526_ARAXOS);
    MDL_APPLYOVERLAYMDS(SLD_13526_ARAXOS, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(SLD_13526_ARAXOS, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(SLD_13526_ARAXOS, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(SLD_13526_ARAXOS, HUMANSCBOWT2);
    B_GIVENPCTALENTS(SLD_13526_ARAXOS);
    B_SETFIGHTSKILLS(SLD_13526_ARAXOS, 0);
    DAILY_ROUTINE = RTN_START_13526;
    AIVAR[74] = NPC_KQ407_ARMY;
}

func void RTN_START_13526() {
    TA_STAND_ARMSCROSSED(1, 0, 6, 0, "PART1_SQ503_ARAXOS_01");
    TA_STAND_ARMSCROSSED(6, 0, 1, 0, "PART1_SQ503_ARAXOS_01");
}

func void RTN_SQ503_HAVEN_13526() {
    TA_STAND_ARMSCROSSED(1, 0, 6, 0, "P17_HAVEN_SQ503_ARAXOS_03");
    TA_STAND_ARMSCROSSED(6, 0, 1, 0, "P17_HAVEN_SQ503_ARAXOS_03");
}

func void RTN_TOT_13526() {
    TA_SIT_SLAVSQUAT(1, 0, 6, 0, TOT);
    TA_SIT_SLAVSQUAT(6, 0, 1, 0, TOT);
}

