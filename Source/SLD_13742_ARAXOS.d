instance SLD_13742_ARAXOS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SOELDNER;
    GUILD = GIL_SLD;
    ID = 13742;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(SLD_13742_ARAXOS, 27);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_13742_ARAXOS, MALE, HUMHEADBALD, FACE_B_ARAXOS51, 3, 35465);
    MDL_APPLYOVERLAYMDS(SLD_13742_ARAXOS, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13742_ARAXOS);
    B_GIVENPCTALENTS(SLD_13742_ARAXOS);
    B_SETFIGHTSKILLS(SLD_13742_ARAXOS, 40);
    DAILY_ROUTINE = RTN_START_13742;
    AIVAR[74] = NPC_ARAXOSMINE_IMARAXOS_INSIDE;
    AIVAR[70] = NPC_AMB_MINE_ARAXOS;
}

func void RTN_START_13742() {
    TA_CHECKLIST(7, 0, 20, 0, "PART7_MINE_STAND_11");
    TA_SIT_THRONE_NEW(20, 0, 23, 0, "PART7_MINE_THRONE_04");
    TA_SLEEP(23, 0, 7, 0, "PART7_MINE_SLEEP_22");
}

