instance SLD_13318_ARAXOS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SOELDNER;
    GUILD = GIL_SLD;
    ID = 13318;
    VOICE = 66;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_13318_ARAXOS, 30);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(SLD_13318_ARAXOS, MALE, HUMHEADTHIEF, FACE_N_ARAXOS21, BODYTEX_N, 35465);
    MDL_APPLYOVERLAYMDS(SLD_13318_ARAXOS, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13318_ARAXOS);
    B_GIVENPCTALENTS(SLD_13318_ARAXOS);
    B_SETFIGHTSKILLS(SLD_13318_ARAXOS, 50);
    DAILY_ROUTINE = RTN_START_13318;
}

func void RTN_START_13318() {
    TA_OBSERVE(7, 0, 22, 0, "PARTM1_JOINARAXOS_SLD_04");
    TA_OBSERVE(22, 0, 7, 0, "PARTM1_JOINARAXOS_SLD_04");
}

func void RTN_TOT_13318() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT_NOIQ(22, 0, 8, 0, TOT);
}

