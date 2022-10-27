instance SLD_11067_DRUNKENGUIDE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARAXOS_CITYGUIDE;
    GUILD = GIL_SLD;
    ID = 0x2b3b;
    VOICE = 25;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETATTRIBUTESTOLEVEL(SLD_11067_DRUNKENGUIDE, 20);
    B_SETFIGHTSKILLS(SLD_11067_DRUNKENGUIDE, 15);
    B_SETNPCVISUAL(SLD_11067_DRUNKENGUIDE, MALE, HUMHEADLUTTERNEU, FACE_N_DRUNKENGUIDE, 1, 0x8a7b);
    MDL_APPLYOVERLAYMDS(SLD_11067_DRUNKENGUIDE, HUMANSDRUNKENMDS);
    B_GIVENPCTALENTS(SLD_11067_DRUNKENGUIDE);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_11067_DRUNKENGUIDE);
    DAILY_ROUTINE = RTN_START_11067;
    AIVAR[74] = NPC_FASTTRAVEL_IAMCITYGUIDE;
}

func void RTN_START_11067() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, "HARBOR_PATH_DRUNKENGUIDE_01");
    TA_STAYSTRAIGHT(16, 0, 8, 0, "HARBOR_PATH_DRUNKENGUIDE_01");
}

func void RTN_CITYGUIDE_GATEEAST_11067() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, PARTM4_PATH_85);
    TA_STAYSTRAIGHT(16, 0, 8, 0, PARTM4_PATH_85);
}

func void RTN_CITYGUIDE_GATEWEST_11067() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, PARTM2_PATH_05);
    TA_STAYSTRAIGHT(16, 0, 8, 0, PARTM2_PATH_05);
}

func void RTN_CITYGUIDE_MARKET_11067() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, PARTM2_PATH_19);
    TA_STAYSTRAIGHT(16, 0, 8, 0, PARTM2_PATH_19);
}

func void RTN_CITYGUIDE_ARAXOS_11067() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, PARTM1_PATH_89);
    TA_STAYSTRAIGHT(16, 0, 8, 0, PARTM1_PATH_89);
}

func void RTN_CITYGUIDE_INNOS_11067() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, PARTM8_PATH_12);
    TA_STAYSTRAIGHT(16, 0, 8, 0, PARTM8_PATH_12);
}

func void RTN_CITYGUIDE_SLUMS_11067() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, SLUMS_PATH_30);
    TA_STAYSTRAIGHT(16, 0, 8, 0, SLUMS_PATH_30);
}

func void RTN_CITYGUIDE_OLAF_11067() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, HARBOUR_PATH_129);
    TA_STAYSTRAIGHT(16, 0, 8, 0, HARBOUR_PATH_129);
}

func void RTN_CITYGUIDE_GERSTAND_11067() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, PARTM4_PATH_54);
    TA_STAYSTRAIGHT(16, 0, 8, 0, PARTM4_PATH_54);
}

func void RTN_CITYGUIDE_GERSTAND_V2_11067() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, PARTM4_TAVERN_03);
    TA_STAYSTRAIGHT(16, 0, 8, 0, PARTM4_TAVERN_03);
}

func void RTN_CITYGUIDE_HARBOURMARKET_11067() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, HARBOUR_PATH_19);
    TA_STAYSTRAIGHT(16, 0, 8, 0, HARBOUR_PATH_19);
}

func void RTN_CITYGUIDE_SHIPYARD_11067() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, HARBOUR_PATH_179);
    TA_STAYSTRAIGHT(16, 0, 8, 0, HARBOUR_PATH_179);
}

func void RTN_CITYGUIDE_ADANOS_11067() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, HARBOUR_PATH_74);
    TA_STAYSTRAIGHT(16, 0, 8, 0, HARBOUR_PATH_74);
}

func void RTN_CITYGUIDE_CRAFT_11067() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, PARTM3_PATH_40);
    TA_STAYSTRAIGHT(16, 0, 8, 0, PARTM3_PATH_40);
}

func void RTN_CITYGUIDE_BARRACK_11067() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, PARTM3_PATH_04);
    TA_STAYSTRAIGHT(16, 0, 8, 0, PARTM3_PATH_04);
}

func void RTN_CITYGUIDE_VOLKER_11067() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, PARTM4_PATH_40);
    TA_STAYSTRAIGHT(16, 0, 8, 0, PARTM4_PATH_40);
}

func void RTN_SLEEP_GATEEAST_11067() {
    TA_GROUNDSLEEP_SQ223(8, 0, 16, 0, PARTM4_PATH_85);
    TA_GROUNDSLEEP_SQ223(16, 0, 8, 0, PARTM4_PATH_85);
}

func void RTN_SLEEP_GATEWEST_11067() {
    TA_GROUNDSLEEP_SQ223(8, 0, 16, 0, PARTM2_PATH_05);
    TA_GROUNDSLEEP_SQ223(16, 0, 8, 0, PARTM2_PATH_05);
}

func void RTN_SLEEP_MARKET_11067() {
    TA_GROUNDSLEEP_SQ223(8, 0, 16, 0, PARTM2_PATH_19);
    TA_GROUNDSLEEP_SQ223(16, 0, 8, 0, PARTM2_PATH_19);
}

func void RTN_SLEEP_ARAXOS_11067() {
    TA_GROUNDSLEEP_SQ223(8, 0, 16, 0, PARTM1_PATH_89);
    TA_GROUNDSLEEP_SQ223(16, 0, 8, 0, PARTM1_PATH_89);
}

func void RTN_SLEEP_INNOS_11067() {
    TA_GROUNDSLEEP_SQ223(8, 0, 16, 0, PARTM8_PATH_12);
    TA_GROUNDSLEEP_SQ223(16, 0, 8, 0, PARTM8_PATH_12);
}

func void RTN_SLEEP_SLUMS_11067() {
    TA_GROUNDSLEEP_SQ223(8, 0, 16, 0, SLUMS_PATH_30);
    TA_GROUNDSLEEP_SQ223(16, 0, 8, 0, SLUMS_PATH_30);
}

func void RTN_SLEEP_OLAF_11067() {
    TA_GROUNDSLEEP_SQ223(8, 0, 16, 0, HARBOUR_PATH_129);
    TA_GROUNDSLEEP_SQ223(16, 0, 8, 0, HARBOUR_PATH_129);
}

func void RTN_SLEEP_GERSTAND_11067() {
    TA_GROUNDSLEEP_SQ223(8, 0, 16, 0, PARTM4_TAVERN_03);
    TA_GROUNDSLEEP_SQ223(16, 0, 8, 0, PARTM4_TAVERN_03);
}

func void RTN_SLEEP_HARBOURMARKET_11067() {
    TA_GROUNDSLEEP_SQ223(8, 0, 16, 0, HARBOUR_PATH_19);
    TA_GROUNDSLEEP_SQ223(16, 0, 8, 0, HARBOUR_PATH_19);
}

func void RTN_SLEEP_SHIPYARD_11067() {
    TA_GROUNDSLEEP_SQ223(8, 0, 16, 0, HARBOUR_PATH_179);
    TA_GROUNDSLEEP_SQ223(16, 0, 8, 0, HARBOUR_PATH_179);
}

func void RTN_SLEEP_ADANOS_11067() {
    TA_GROUNDSLEEP_SQ223(8, 0, 16, 0, HARBOUR_PATH_74);
    TA_GROUNDSLEEP_SQ223(16, 0, 8, 0, HARBOUR_PATH_74);
}

func void RTN_SLEEP_CRAFT_11067() {
    TA_GROUNDSLEEP_SQ223(8, 0, 16, 0, PARTM3_PATH_40);
    TA_GROUNDSLEEP_SQ223(16, 0, 8, 0, PARTM3_PATH_40);
}

func void RTN_SLEEP_BARRACK_11067() {
    TA_GROUNDSLEEP_SQ223(8, 0, 16, 0, PARTM3_PATH_04);
    TA_GROUNDSLEEP_SQ223(16, 0, 8, 0, PARTM3_PATH_04);
}

func void RTN_SLEEP_VOLKER_11067() {
    TA_GROUNDSLEEP_SQ223(8, 0, 16, 0, PARTM4_PATH_40);
    TA_GROUNDSLEEP_SQ223(16, 0, 8, 0, PARTM4_PATH_40);
}

func void RTN_TOT_11067() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, TOT);
    TA_STAYSTRAIGHT(16, 0, 8, 0, TOT);
}
