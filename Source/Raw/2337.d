instance SLD_13704_ARAXOS_GUARDMINE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WACHE;
    GUILD = GIL_SLD;
    ID = 0x3588;
    VOICE = 6;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_13704_ARAXOS_GUARDMINE, 45);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_13704_ARAXOS_GUARDMINE, MALE, HUMHEADFATBALD, FACE_B_ARAXOSMINEGUARD, 3, 0x8a7e);
    MDL_APPLYOVERLAYMDS(SLD_13704_ARAXOS_GUARDMINE, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13704_ARAXOS_GUARDMINE);
    B_GIVENPCTALENTS(SLD_13704_ARAXOS_GUARDMINE);
    B_SETFIGHTSKILLS(SLD_13704_ARAXOS_GUARDMINE, 60);
    DAILY_ROUTINE = RTN_START_13704;
}

func void RTN_START_13704() {
    TA_GUARD_PASSAGE(8, 0, 13, 0, TOT2);
    TA_GUARD_PASSAGE(13, 0, 8, 0, TOT2);
}

func void RTN_BLOCKPATH_13704() {
    TA_GUARD_PASSAGE(8, 0, 13, 0, "PART7_MINE_BLOCKPATH_GUARD");
    TA_GUARD_PASSAGE(13, 0, 8, 0, "PART7_MINE_BLOCKPATH_GUARD");
}

