instance SLD_13737_ARAXOS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SOELDNER;
    GUILD = GIL_SLD;
    ID = 0x35a9;
    VOICE = 49;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(SLD_13737_ARAXOS, 32);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_13737_ARAXOS, MALE, HUMHEADBALD, FACE_B_ARAXOS48, 3, 0x8a7e);
    MDL_APPLYOVERLAYMDS(SLD_13737_ARAXOS, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13737_ARAXOS);
    B_GIVENPCTALENTS(SLD_13737_ARAXOS);
    B_SETFIGHTSKILLS(SLD_13737_ARAXOS, 40);
    DAILY_ROUTINE = RTN_START_13737;
    AIVAR[70] = NPC_AMB_MINE_ARAXOS;
}

func void RTN_START_13737() {
    TA_SIT_THRONE_NEW(7, 0, 20, 0, "PART7_MINE_THRONE_07");
    TA_STAND_ARMSCROSSED(20, 0, 7, 0, "PART7_MINE_STAND_17");
}

