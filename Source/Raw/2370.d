instance SLD_13735_ARAXOS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SOELDNER;
    GUILD = GIL_SLD;
    ID = 0x35a7;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(SLD_13735_ARAXOS, 32);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_13735_ARAXOS, MALE, HUMHEADFIGHTER, FACE_P_ARAXOS46, 0, 0x8a7e);
    MDL_APPLYOVERLAYMDS(SLD_13735_ARAXOS, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13735_ARAXOS);
    B_GIVENPCTALENTS(SLD_13735_ARAXOS);
    B_SETFIGHTSKILLS(SLD_13735_ARAXOS, 40);
    DAILY_ROUTINE = RTN_START_13735;
    AIVAR[70] = NPC_AMB_MINE_ARAXOS;
}

func void RTN_START_13735() {
    TA_SMALLTALK(7, 0, 22, 0, "PART7_MINE_SMALLTALK_04");
    TA_SMOKE_JOINT(22, 0, 7, 0, "PART7_MINE_STAND_21");
}

