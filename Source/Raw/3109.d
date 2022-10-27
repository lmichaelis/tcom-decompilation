instance KDF_9004_TENGRAL_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_TENGRAL;
    GUILD = GIL_KDF;
    ID = 0xc38b;
    VOICE = 50;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(KDF_9004_TENGRAL_Q602, 60);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(KDF_9004_TENGRAL_Q602, MALE, HUMHEADFIGHTER, FACE_N_TENGRAL, 1, 0x847c);
    MDL_APPLYOVERLAYMDS(KDF_9004_TENGRAL_Q602, HUMANSMAGEMDS);
    B_GIVENPCTALENTS(KDF_9004_TENGRAL_Q602);
    B_SETFIGHTSKILLS(KDF_9004_TENGRAL_Q602, 30);
    DAILY_ROUTINE = RTN_START_50059;
}

func void RTN_START_50059() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 23, 0, "PARTM1_RICHHOUSE03_33");
    TA_STAYSTRAIGHT_NOIQ(23, 0, 8, 0, "PARTM1_RICHHOUSE03_33");
}

func void RTN_Q602_FIGHT_50059() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, "PARTM1_RICHHOUSE03_33");
    TA_STAYSTRAIGHT(23, 0, 8, 0, "PARTM1_RICHHOUSE03_33");
}

func void RTN_Q602_GUIDE_V1_50059() {
    TA_GUIDE_PLAYER(8, 0, 23, 0, "PARTM1_PATH_66");
    TA_GUIDE_PLAYER(23, 0, 8, 0, "PARTM1_PATH_66");
}

func void RTN_Q602_GUIDE_V2_50059() {
    TA_GUIDE_PLAYER(8, 0, 23, 0, PARTM8_PATH_12);
    TA_GUIDE_PLAYER(23, 0, 8, 0, PARTM8_PATH_12);
}

func void RTN_Q602_SEARCH_50059() {
    TA_SEARCH_ONLY(8, 0, 23, 0, "PARTM8_PATH_23");
    TA_SEARCH_ONLY(23, 0, 8, 0, "PARTM8_PATH_23");
}

func void RTN_Q602_FOLLOW_50059() {
    TA_FOLLOW_PLAYER(8, 0, 23, 0, "PARTE8_PATH_04");
    TA_FOLLOW_PLAYER(23, 0, 8, 0, "PARTE8_PATH_04");
}

func void RTN_Q602_GUIDE_V3_50059() {
    TA_RUNTOWP(8, 0, 23, 0, "PARTE3_TENGRAL");
    TA_RUNTOWP(23, 0, 8, 0, "PARTE3_TENGRAL");
}

func void RTN_Q602_WAIT_50059() {
    TA_PRAY_INNOS_FP(8, 0, 23, 0, "PARTE1_TENGRAL_PRAY");
    TA_PRAY_INNOS_FP(23, 0, 8, 0, "PARTE1_TENGRAL_PRAY");
}

func void RTN_Q602_OPENGATE_50059() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, "PARTM3_PATH_03");
    TA_STAYSTRAIGHT(23, 0, 8, 0, "PARTM3_PATH_03");
}

func void RTN_Q602_BARRACK_WAIT_50059() {
    TA_SEARCH_ONLY(8, 0, 23, 0, "PARTE3_TENGRAL_SEARCH");
    TA_SEARCH_ONLY(23, 0, 8, 0, "PARTE3_TENGRAL_SEARCH");
}

func void RTN_Q602_BARRACK_50059() {
    TA_READ(8, 0, 23, 0, "PARTM3_BARRACK_HOUSE1_02");
    TA_READ(23, 0, 8, 0, "PARTM3_BARRACK_HOUSE1_02");
}

