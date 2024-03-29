instance KDW_203_RIORDIAN_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_RIORDIAN;
    GUILD = GIL_KDW;
    ID = 50061;
    VOICE = 19;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[51] = MAGIC_ALWAYS;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(KDW_203_RIORDIAN_Q602, 40);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(KDW_203_RIORDIAN_Q602, MALE, HUMHEADBALD, FACE_P_RIORDIAN, 0, 33573);
    MDL_APPLYOVERLAYMDS(KDW_203_RIORDIAN_Q602, HUMANSMAGEMDS);
    B_GIVENPCTALENTS(KDW_203_RIORDIAN_Q602);
    B_SETFIGHTSKILLS(KDW_203_RIORDIAN_Q602, 60);
    DAILY_ROUTINE = RTN_START_50061;
}

func void RTN_START_50061() {
    TA_SEARCH_ONLY(8, 0, 22, 0, "PARTM4_PATH_49");
    TA_SEARCH_ONLY(22, 0, 8, 0, "PARTM4_PATH_49");
}

func void RTN_TOT_50061() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

func void RTN_Q602_FOLLOW_50061() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "PARTM4_PATH_49");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "PARTM4_PATH_49");
}

func void RTN_Q602_FOLLOW_01_50061() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "PARTM4_PATH_55");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "PARTM4_PATH_55");
}

func void RTN_Q602_FOLLOW_02_50061() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "PARTM4_PATH_83");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "PARTM4_PATH_83");
}

func void RTN_Q602_FOLLOW_03_50061() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "PARTM5_PATH_01");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "PARTM5_PATH_01");
}

func void RTN_Q602_FOLLOW_04_50061() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "PARTM5_PATH_05");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "PARTM5_PATH_05");
}

func void RTN_Q602_OBSERVE_50061() {
    TA_OBSERVE(8, 0, 22, 0, "PARTM5_FINALWAR_RIORDIAN2");
    TA_OBSERVE(22, 0, 8, 0, "PARTM5_FINALWAR_RIORDIAN2");
}

func void RTN_Q602_AFTERULRYK_50061() {
    TA_OBSERVE(8, 0, 22, 0, "PARTM5_FINALWAR_RIORDIAN3");
    TA_OBSERVE(22, 0, 8, 0, "PARTM5_FINALWAR_RIORDIAN3");
}

func void RTN_Q602_SMALLTALK_50061() {
    TA_SMALLTALK(8, 0, 22, 0, "PARTE5_SMALLTALK_02");
    TA_SMALLTALK(22, 0, 8, 0, "PARTE5_SMALLTALK_02");
}

