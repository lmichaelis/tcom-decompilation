instance SLD_10097_GUIDE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARAXOS_CITYGUIDE;
    GUILD = GIL_SLD;
    ID = 10097;
    VOICE = 49;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETATTRIBUTESTOLEVEL(SLD_10097_GUIDE, 20);
    B_SETFIGHTSKILLS(SLD_10097_GUIDE, 30);
    B_SETNPCVISUAL(SLD_10097_GUIDE, MALE, HUMHEADFLEXNEU, FACE_B_GUIDE03, BODYTEX_B, 35451);
    MDL_APPLYOVERLAYMDS(SLD_10097_GUIDE, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(SLD_10097_GUIDE);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_10097_GUIDE);
    DAILY_ROUTINE = RTN_START_10097;
    AIVAR[74] = NPC_FASTTRAVEL_IAMCITYGUIDE;
    AIVAR[70] = NPC_AMB_CITY_ARAXOSGUIDE;
}

func void RTN_START_10097() {
    TA_LEAN(8, 0, 16, 0, "PARTM3_GUIDE03");
    TA_LEAN(16, 0, 8, 0, "PARTM3_GUIDE03");
}

func void RTN_CITYGUIDE_GATEEAST_10097() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM4_PATH_85);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM4_PATH_85);
}

func void RTN_CITYGUIDE_GATEWEST_10097() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM2_PATH_05);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM2_PATH_05);
}

func void RTN_CITYGUIDE_MARKET_10097() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM2_PATH_19);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM2_PATH_19);
}

func void RTN_CITYGUIDE_ARAXOS_10097() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM1_PATH_89);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM1_PATH_89);
}

func void RTN_CITYGUIDE_INNOS_10097() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM8_PATH_12);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM8_PATH_12);
}

func void RTN_CITYGUIDE_SLUMS_10097() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, SLUMS_PATH_30);
    TA_GUIDE_PLAYER(16, 0, 8, 0, SLUMS_PATH_30);
}

func void RTN_CITYGUIDE_OLAF_10097() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, HARBOUR_PATH_129);
    TA_GUIDE_PLAYER(16, 0, 8, 0, HARBOUR_PATH_129);
}

func void RTN_CITYGUIDE_GERSTAND_10097() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM4_PATH_54);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM4_PATH_54);
}

func void RTN_CITYGUIDE_GERSTAND_V2_10097() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM4_TAVERN_03);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM4_TAVERN_03);
}

func void RTN_CITYGUIDE_HARBOURMARKET_10097() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, HARBOUR_PATH_19);
    TA_GUIDE_PLAYER(16, 0, 8, 0, HARBOUR_PATH_19);
}

func void RTN_CITYGUIDE_SHIPYARD_10097() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, HARBOUR_PATH_179);
    TA_GUIDE_PLAYER(16, 0, 8, 0, HARBOUR_PATH_179);
}

func void RTN_CITYGUIDE_ADANOS_10097() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, HARBOUR_PATH_74);
    TA_GUIDE_PLAYER(16, 0, 8, 0, HARBOUR_PATH_74);
}

func void RTN_CITYGUIDE_CRAFT_10097() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM3_PATH_40);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM3_PATH_40);
}

func void RTN_CITYGUIDE_BARRACK_10097() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM3_PATH_04);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM3_PATH_04);
}

func void RTN_CITYGUIDE_VOLKER_10097() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, PARTM4_PATH_40);
    TA_GUIDE_PLAYER(16, 0, 8, 0, PARTM4_PATH_40);
}

