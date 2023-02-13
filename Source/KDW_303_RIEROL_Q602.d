instance KDW_303_RIEROL_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_RIEROL;
    GUILD = GIL_KDW;
    ID = 50062;
    VOICE = 51;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[51] = MAGIC_ALWAYS;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(KDW_303_RIEROL_Q602, 40);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(KDW_303_RIEROL_Q602, MALE, HUMHEADBALD, FACE_N_RIEROL, 1, 33924);
    MDL_APPLYOVERLAYMDS(KDW_303_RIEROL_Q602, HUMANSMAGEMDS);
    B_GIVENPCTALENTS(KDW_303_RIEROL_Q602);
    B_SETFIGHTSKILLS(KDW_303_RIEROL_Q602, 60);
    DAILY_ROUTINE = RTN_START_50062;
}

func void RTN_START_50062() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 23, 0, "PARTE5_SPAWNPOINT_04");
    TA_STAYSTRAIGHT_NOIQ(23, 0, 8, 0, "PARTE5_SPAWNPOINT_04");
}

func void RTN_Q602_RUN_50062() {
    TA_RUNTOWP_Q602(8, 0, 23, 0, "PARTE5_FIGHTPOINT_04");
    TA_RUNTOWP_Q602(23, 0, 8, 0, "PARTE5_FIGHTPOINT_04");
}

func void RTN_Q602_FIGHT_50062() {
    TA_STAYSTRAIGHT_BIGFIGHT(8, 0, 23, 0, "PARTE5_WAR_MAGE_01");
    TA_STAYSTRAIGHT_BIGFIGHT(23, 0, 8, 0, "PARTE5_WAR_MAGE_01");
}

func void RTN_AFTERFIGHT_50062() {
    TA_SEARCH_ONLY_NOIQ(8, 0, 23, 0, "PARTE5_WAR_MAGE_01");
    TA_SEARCH_ONLY_NOIQ(23, 0, 8, 0, "PARTE5_WAR_MAGE_01");
}

