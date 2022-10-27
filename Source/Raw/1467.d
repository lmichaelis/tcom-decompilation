instance VLK_6420_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 0x1914;
    VOICE = 72;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6420_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6420_CITIZEN, MALE, HUMHEADFATBALD, FACE_B_CITIZEN85, 3, 0x8adb);
    MDL_APPLYOVERLAYMDS(VLK_6420_CITIZEN, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6420_CITIZEN);
    B_GIVENPCTALENTS(VLK_6420_CITIZEN);
    B_SETFIGHTSKILLS(VLK_6420_CITIZEN, 45);
    DAILY_ROUTINE = RTN_START_6420;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6420() {
    TA_SIT_BENCH(8, 0, 20, 0, "PARTM4_TAVERN_BENCH_01");
    TA_STAND_DRINKING(20, 0, 8, 0, "PARTM4_TAVERN_18");
}

func void RTN_CUTSCENE_6420() {
    TA_STAYSTRAIGHT(8, 0, 18, 0, "PARTM4_TAVERN_CUTSCENE_CITIZEN_04");
    TA_STAYSTRAIGHT(18, 0, 8, 0, "PARTM4_TAVERN_CUTSCENE_CITIZEN_04");
}

func void RTN_TOT_6420() {
    TA_STAYSTRAIGHT(8, 0, 18, 0, TOT);
    TA_STAYSTRAIGHT(18, 0, 8, 0, TOT);
}

func void RTN_QM202_INN_6420() {
    TA_SIT_BENCH(8, 0, 20, 0, "SLUMS_SUBPATH_04");
    TA_SIT_BENCH(20, 0, 8, 0, "SLUMS_SUBPATH_04");
}

