instance SLD_13743_ARAXOS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SOELDNER;
    GUILD = GIL_SLD;
    ID = 13743;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(SLD_13743_ARAXOS, 27);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_13743_ARAXOS, MALE, HUMHEADBALD, FACE_N_ARAXOS52, 1, 35465);
    MDL_APPLYOVERLAYMDS(SLD_13743_ARAXOS, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13743_ARAXOS);
    B_GIVENPCTALENTS(SLD_13743_ARAXOS);
    B_SETFIGHTSKILLS(SLD_13743_ARAXOS, 40);
    DAILY_ROUTINE = RTN_START_13743;
    AIVAR[74] = NPC_ARAXOSMINE_IMARAXOS_INSIDE;
    AIVAR[70] = NPC_AMB_MINE_ARAXOS;
}

func void RTN_START_13743() {
    TA_STAND_GUARDING(7, 0, 8, 30, "PART7_MINE_STAND_25");
    TA_STAND_ARMSCROSSED(8, 30, 10, 20, "PART7_MINE_STAND_27");
    TA_WAITING(10, 20, 12, 40, "PART7_MINE_STAND_26");
    TA_DRINKBARREL(12, 40, 14, 0, "PART7_MINE_DRINK_02");
    TA_STAND_GUARDING(14, 0, 15, 30, "PART7_MINE_STAND_25");
    TA_STAND_ARMSCROSSED(15, 30, 17, 20, "PART7_MINE_STAND_27");
    TA_WAITING(17, 20, 19, 40, "PART7_MINE_STAND_26");
    TA_DRINKBARREL(19, 40, 21, 0, "PART7_MINE_DRINK_02");
    TA_SIT_THRONE_NEW(21, 0, 23, 0, "PART7_MINE_THRONE_04");
    TA_SLEEP(23, 0, 7, 0, "PART7_MINE_SLEEP_23");
}

