instance NONE_6396_VOLKERGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BODYGUARD;
    GUILD = GIL_VLK;
    ID = 0x18fc;
    VOICE = 25;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6396_VOLKERGUARD, 50);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(NONE_6396_VOLKERGUARD, MALE, HUMHEADTHIEF, FACE_N_VOLKERGUARD01, 1, 0x8a97);
    MDL_APPLYOVERLAYMDS(NONE_6396_VOLKERGUARD, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6396_VOLKERGUARD);
    B_GIVENPCTALENTS(NONE_6396_VOLKERGUARD);
    B_SETFIGHTSKILLS(NONE_6396_VOLKERGUARD, 75);
    DAILY_ROUTINE = RTN_START_6396;
    AIVAR[70] = NPC_AMB_VOLKER;
}

func void RTN_START_6396() {
    TA_SMALLTALK(8, 0, 18, 0, "PARTM4_VOLKERHOUSE_OUTSIDE_SMALLTALK_02");
    TA_STAND_ARMSCROSSED(18, 0, 22, 0, "PARTM4_PATH_107");
    TA_STAND_ARMSCROSSED(22, 0, 8, 0, "PARTM4_VOLKER_HOUSE_GUARD_06");
}

func void RTN_SQ225_6396() {
    TA_RUNTOWP(8, 0, 18, 0, "PARTM4_SQ225_VOLKERGUARD_01");
    TA_RUNTOWP(18, 0, 8, 0, "PARTM4_SQ225_VOLKERGUARD_01");
}

func void RTN_Q308_6396() {
    TA_STAND_ARMSCROSSED(8, 0, 18, 0, "PARTM4_VOLKER_HOUSE_GUARD_06");
    TA_STAND_ARMSCROSSED(18, 0, 8, 0, "PARTM4_VOLKER_HOUSE_GUARD_06");
}

func void RTN_TOT_6396() {
    TA_STAYSTRAIGHT(8, 0, 18, 0, TOT);
    TA_STAYSTRAIGHT(18, 0, 8, 0, TOT);
}

func void RTN_JORNHOUSEWAIT_6396() {
    TA_STAYSTRAIGHT(8, 0, 18, 0, "SLUMS_HOUSE17_16");
    TA_STAYSTRAIGHT(18, 0, 8, 0, "SLUMS_HOUSE17_16");
}

func void RTN_JORNHOUSE_6396() {
    TA_STAYSTRAIGHT(8, 0, 18, 0, "SLUMS_HOUSE17_VOLKERGUARD_01");
    TA_STAYSTRAIGHT(18, 0, 8, 0, "SLUMS_HOUSE17_VOLKERGUARD_01");
}

func void RTN_JORNHOUSEOUTSIDE_6396() {
    TA_STAYSTRAIGHT(8, 0, 18, 0, "SLUMS_PATH_60");
    TA_STAYSTRAIGHT(18, 0, 8, 0, "SLUMS_PATH_60");
}

func void RTN_JORNHOUSEOUTSIDE3_6396() {
    TA_STAND_DRINKING(8, 0, 18, 0, "SLUMS_HOUSE17_VOLKERGUARD_04");
    TA_STAND_DRINKING(18, 0, 8, 0, "SLUMS_HOUSE17_VOLKERGUARD_04");
}

