instance SLD_1012_ARAXOS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SOELDNER;
    GUILD = GIL_SLD;
    ID = 0x3f4;
    VOICE = 63;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_1012_ARAXOS, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_1012_ARAXOS, MALE, HUMHEADTHIEF, FACE_N_ARAXOS02, 1, 0x8a89);
    MDL_APPLYOVERLAYMDS(SLD_1012_ARAXOS, HUMANSPOCKETWALKMDS);
    B_GIVENPCTALENTS(SLD_1012_ARAXOS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_1012_ARAXOS);
    DAILY_ROUTINE = RTN_START_1012;
}

func void RTN_START_1012() {
    TA_STAYSTRAIGHT(7, 0, 16, 0, TOT);
    TA_STAYSTRAIGHT(16, 0, 7, 0, TOT);
}

func void RTN_JOIN_1012() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, "PARTM1_JOINARAXOS_SLD_02");
    TA_STAYSTRAIGHT(16, 0, 8, 0, "PARTM1_JOINARAXOS_SLD_02");
}

func void RTN_JOIN2_1012() {
    TA_GAWK(8, 0, 16, 0, "PARTM1_JOINARAXOS_SLD_09");
    TA_GAWK(16, 0, 8, 0, "PARTM1_JOINARAXOS_SLD_09");
}

func void RTN_JOIN3_1012() {
    TA_MILJOIN(8, 0, 16, 0, "PARTM1_JOINARAXOS_SLD_09");
    TA_MILJOIN(16, 0, 8, 0, "PARTM1_JOINARAXOS_SLD_09");
}

func void RTN_JOIN4_1012() {
    TA_STAND_DRINKING(8, 0, 16, 0, "PARTM1_JOINARAXOS_SLD_09");
    TA_STAND_DRINKING(16, 0, 8, 0, "PARTM1_JOINARAXOS_SLD_09");
}

