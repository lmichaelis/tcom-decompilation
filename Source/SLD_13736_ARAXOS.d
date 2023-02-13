instance SLD_13736_ARAXOS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SOELDNER;
    GUILD = GIL_SLD;
    ID = 13736;
    VOICE = 49;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(SLD_13736_ARAXOS, 27);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_13736_ARAXOS, MALE, HUMHEADBALD, FACE_N_ARAXOS47, 1, 35465);
    MDL_APPLYOVERLAYMDS(SLD_13736_ARAXOS, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13736_ARAXOS);
    B_GIVENPCTALENTS(SLD_13736_ARAXOS);
    B_SETFIGHTSKILLS(SLD_13736_ARAXOS, 40);
    DAILY_ROUTINE = RTN_START_13736;
    AIVAR[70] = NPC_AMB_MINE_ARAXOS;
}

func void RTN_START_13736() {
    TA_SIT_CHAIR_SMOKE(7, 0, 22, 0, "PART7_MINE_CHAIR_05");
    TA_SIT_CHAIR_SMOKE(22, 0, 7, 0, "PART7_MINE_CHAIR_05");
}
