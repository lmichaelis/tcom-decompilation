instance KDF_9004_TENGRAL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_TENGRAL;
    GUILD = GIL_KDF;
    ID = 0x232c;
    VOICE = 50;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(KDF_9004_TENGRAL, 60);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(KDF_9004_TENGRAL, 0x84cd);
    B_SETNPCVISUAL(KDF_9004_TENGRAL, MALE, HUMHEADFIGHTER, FACE_N_TENGRAL, 1, 0x847c);
    MDL_APPLYOVERLAYMDS(KDF_9004_TENGRAL, HUMANSMAGEMDS);
    B_GIVENPCTALENTS(KDF_9004_TENGRAL);
    B_SETFIGHTSKILLS(KDF_9004_TENGRAL, 30);
    DAILY_ROUTINE = RTN_START_9004;
    AIVAR[74] = NPC_SQ225_KNOWGERHARD;
}

func void RTN_START_9004() {
    TA_PRAYSTAND(7, 0, 10, 40, "PARTM8_PATH_PRAY");
    TA_SIT_THRONE(10, 40, 13, 0, "PARTM8_PATH_BIGCHAIR");
    TA_PREACH_TENGRAL(13, 0, 14, 0, "PARTM8_PATH_PREACH");
    TA_SIT_THRONE(14, 0, 15, 0, "PARTM8_PATH_BIGCHAIR");
    TA_PRAYSTAND(15, 0, 22, 0, "PARTM8_PATH_PRAY");
    TA_SLEEP(22, 0, 7, 0, "PARTM1_FIREMAGES_BED_05");
}

func void RTN_SQ309_9004() {
    TA_SMALLTALK(8, 0, 12, 0, "PARTM8_SMALLTALK_01");
    TA_SMALLTALK(12, 0, 8, 0, "PARTM8_SMALLTALK_01");
}

func void RTN_SQ313_JUDGE_9004() {
    TA_STAYSTRAIGHT_NOIQ(7, 0, 14, 0, "PARTM1_SQ313_JUDGE_01");
    TA_STAYSTRAIGHT_NOIQ(14, 0, 7, 0, "PARTM1_SQ313_JUDGE_01");
}

func void RTN_KQ404_NIGHT_9004() {
    TA_PREACH_TENGRAL(8, 0, 12, 0, "PARTM8_PATH_PREACH");
    TA_PREACH_TENGRAL(12, 0, 13, 4, "PARTM8_PATH_PREACH");
    TA_PREACH_TENGRAL(13, 4, 22, 0, "PARTM8_PATH_PREACH");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PARTM1_PATH_66");
}

func void RTN_SQ505_GRAVE_9004() {
    TA_STAYSTRAIGHT(8, 0, 12, 0, "PARTM8_SQ505_GRAVE_TENGRAL");
    TA_STAYSTRAIGHT(12, 0, 8, 0, "PARTM8_SQ505_GRAVE_TENGRAL");
}

