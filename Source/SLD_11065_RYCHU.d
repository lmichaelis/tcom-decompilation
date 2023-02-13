instance SLD_11065_RYCHU(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARAXOS_CITYGUIDE;
    GUILD = GIL_SLD;
    ID = 11065;
    VOICE = 59;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETATTRIBUTESTOLEVEL(SLD_11065_RYCHU, 20);
    B_SETFIGHTSKILLS(SLD_11065_RYCHU, 30);
    B_SETNPCVISUAL(SLD_11065_RYCHU, MALE, HUMHEADPYMONTENEU, FACE_N_GUIDE05, 1, 35451);
    MDL_APPLYOVERLAYMDS(SLD_11065_RYCHU, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(SLD_11065_RYCHU);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_11065_RYCHU);
    DAILY_ROUTINE = RTN_START_11065;
    AIVAR[74] = NPC_FASTTRAVEL_IAMCITYGUIDE;
    AIVAR[70] = NPC_AMB_CITY_ARAXOSGUIDE;
}

func void RTN_START_11065() {
    TA_SIT_BENCH(8, 0, 16, 0, "PARTM4_BENCH_05");
    TA_SIT_BENCH(16, 0, 8, 0, "PARTM4_BENCH_05");
}

func void RTN_CITYGUIDE_GATEEAST_11065() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM4_PATH_85);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM4_PATH_85);
}

func void RTN_CITYGUIDE_GATEWEST_11065() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM2_PATH_05);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM2_PATH_05);
}

func void RTN_CITYGUIDE_MARKET_11065() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM2_PATH_19);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM2_PATH_19);
}

func void RTN_CITYGUIDE_ARAXOS_11065() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM1_PATH_89);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM1_PATH_89);
}

func void RTN_CITYGUIDE_INNOS_11065() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM8_PATH_12);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM8_PATH_12);
}

func void RTN_CITYGUIDE_SLUMS_11065() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, SLUMS_PATH_30);
    TA_GUIDE_PLAYER(16, 0, 8, 0, SLUMS_PATH_30);
}

func void RTN_CITYGUIDE_OLAF_11065() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, HARBOUR_PATH_129);
    TA_GUIDE_PLAYER(16, 0, 8, 0, HARBOUR_PATH_129);
}

func void RTN_CITYGUIDE_GERSTAND_11065() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM4_PATH_54);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM4_PATH_54);
}

func void RTN_CITYGUIDE_GERSTAND_V2_11065() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM4_TAVERN_03);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM4_TAVERN_03);
}

func void RTN_CITYGUIDE_HARBOURMARKET_11065() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, HARBOUR_PATH_19);
    TA_GUIDE_PLAYER(16, 0, 8, 0, HARBOUR_PATH_19);
}

func void RTN_CITYGUIDE_SHIPYARD_11065() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, HARBOUR_PATH_179);
    TA_GUIDE_PLAYER(16, 0, 8, 0, HARBOUR_PATH_179);
}

func void RTN_CITYGUIDE_ADANOS_11065() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, HARBOUR_PATH_74);
    TA_GUIDE_PLAYER(16, 0, 8, 0, HARBOUR_PATH_74);
}

func void RTN_CITYGUIDE_CRAFT_11065() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM3_PATH_40);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM3_PATH_40);
}

func void RTN_CITYGUIDE_BARRACK_11065() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM3_PATH_04);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM3_PATH_04);
}

func void RTN_CITYGUIDE_VOLKER_11065() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM4_PATH_40);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM4_PATH_40);
}

