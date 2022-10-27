instance SLD_13317_ARAXOS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SOELDNER;
    GUILD = GIL_SLD;
    ID = 0x3405;
    VOICE = 60;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_13317_ARAXOS, 30);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(SLD_13317_ARAXOS, MALE, HUMHEADPSIONIC, FACE_N_ARAXOS20, BODYTEX_N, 0x8a89);
    MDL_APPLYOVERLAYMDS(SLD_13317_ARAXOS, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13317_ARAXOS);
    B_GIVENPCTALENTS(SLD_13317_ARAXOS);
    B_SETFIGHTSKILLS(SLD_13317_ARAXOS, 50);
    DAILY_ROUTINE = RTN_START_13317;
}

func void RTN_START_13317() {
    TA_OBSERVE(7, 0, 22, 0, "PARTM1_JOINARAXOS_SLD_02");
    TA_OBSERVE(22, 0, 7, 0, "PARTM1_JOINARAXOS_SLD_02");
}

func void RTN_TOT_13317() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT_NOIQ(22, 0, 8, 0, TOT);
}

