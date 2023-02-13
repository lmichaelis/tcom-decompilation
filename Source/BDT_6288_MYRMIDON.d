instance BDT_6288_MYRMIDON(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MYRMIDON;
    GUILD = GIL_NONE;
    ID = 6288;
    VOICE = 61;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_6288_MYRMIDON, 20);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(BDT_6288_MYRMIDON, MALE, HUMHEADWITHOUTPONY, FACE_N_MYRMIDON, 1, 35438);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_6288_MYRMIDON);
    MDL_APPLYOVERLAYMDS(BDT_6288_MYRMIDON, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(BDT_6288_MYRMIDON);
    B_SETFIGHTSKILLS(BDT_6288_MYRMIDON, 60);
    DAILY_ROUTINE = RTN_TOT_6288;
}

func void RTN_START_6288() {
    TA_STAYSTRAIGHT(8, 0, 12, 0, "PART15_PATH_226");
    TA_STAYSTRAIGHT(12, 0, 8, 0, "PART15_PATH_226");
}

func void RTN_CUTSCENE_6288() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 12, 0, "PART15_PATH_220");
    TA_STAYSTRAIGHT_NOIQ(12, 0, 8, 0, "PART15_PATH_220");
}

func void RTN_HAVEN_6288() {
    TA_SIT_BENCH(8, 0, 12, 0, "PART17_HAVEN_BENCH_01");
    TA_SIT_BENCH(12, 0, 8, 0, "PART17_HAVEN_BENCH_01");
}

func void RTN_TAVERN_6288() {
    TA_STAYSTRAIGHT(8, 0, 12, 0, "PART17_BAR_02");
    TA_STAYSTRAIGHT(12, 0, 8, 0, "PART17_BAR_02");
}

func void RTN_TOT_6288() {
    TA_STAYSTRAIGHT(8, 0, 12, 0, TOT);
    TA_STAYSTRAIGHT(12, 0, 8, 0, TOT);
}

func void RTN_KQ405_SPAWN_6288() {
    TA_STAYSTRAIGHT(8, 0, 12, 0, "PART13_KQ405_SPAWNHUNTER_01");
    TA_STAYSTRAIGHT(12, 0, 8, 0, "PART13_KQ405_SPAWNHUNTER_01");
}

func void RTN_KQ405_SILBACH_6288() {
    TA_STAND_GUARDING(8, 0, 12, 0, RND_AV_HARRY_WAYPOINT);
    TA_STAND_GUARDING(12, 0, 8, 0, RND_AV_HARRY_WAYPOINT);
}

func void RTN_KQ405_GUIDE_6288() {
    TA_GUIDE_PLAYER(8, 0, 12, 0, "PART13_KQ405_HUNTERGUIDE_01");
    TA_GUIDE_PLAYER(12, 0, 8, 0, "PART13_KQ405_HUNTERGUIDE_01");
}

