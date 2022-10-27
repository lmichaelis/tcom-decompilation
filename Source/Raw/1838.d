instance SLD_13891_Q308_ARAXOS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SOELDNER;
    GUILD = GIL_SLD;
    ID = 0x3643;
    VOICE = 28;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_13891_Q308_ARAXOS, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_13891_Q308_ARAXOS, MALE, HUMHEADFIGHTER, FACE_N_ARAXOS55, 1, 0x8a7b);
    MDL_APPLYOVERLAYMDS(SLD_13891_Q308_ARAXOS, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13891_Q308_ARAXOS);
    B_GIVENPCTALENTS(SLD_13891_Q308_ARAXOS);
    B_SETFIGHTSKILLS(SLD_13891_Q308_ARAXOS, 40);
    DAILY_ROUTINE = RTN_START_13891;
    AIVAR[74] = NPC_Q308_IAMHELPINGREFUGEE;
}

func void RTN_START_13891() {
    TA_CHECKLIST(8, 0, 22, 0, "HARBOUR_Q308_ARAXOS_04");
    TA_CHECKLIST(22, 0, 8, 0, "HARBOUR_Q308_ARAXOS_04");
}

func void RTN_TOT_13891() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}
