instance NONE_5_FABIO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_FABIO;
    GUILD = GIL_NONE;
    ID = 5;
    VOICE = 51;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[95] = TRUE;
    B_SETATTRIBUTESTOLEVEL(NONE_5_FABIO, 3);
    FIGHT_TACTIC = FAI_HUMAN_NOJUMP;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETNPCVISUAL(NONE_5_FABIO, MALE, HUMHEADWITHOUTPONY, FACE_N_FABIO, BODYTEX_N, 35427);
    MDL_APPLYOVERLAYMDS(NONE_5_FABIO, HUMANSRELAXEDMDS);
    B_CREATEAMBIENTINV(NONE_5_FABIO);
    EQUIPITEM(NONE_5_FABIO, 33996);
    B_GIVENPCTALENTS(NONE_5_FABIO);
    B_SETFIGHTSKILLS(NONE_5_FABIO, 30);
    DAILY_ROUTINE = RTN_START_5;
}

func void RTN_START_5() {
    TA_LEAN(7, 0, 22, 0, "SHIP_FABIO_01");
    TA_LEAN(22, 0, 7, 0, "SHIP_FABIO_01");
}

func void RTN_SHIP_5() {
    TA_IDLE(7, 0, 22, 0, "SHIP_FABIO_02");
    TA_IDLE(22, 0, 7, 0, "SHIP_FABIO_02");
}

func void RTN_BEACH_5() {
    TA_STAND_WP(7, 0, 22, 0, "PART_13_FABIO_01");
    TA_STAND_WP(22, 0, 7, 0, "PART_13_FABIO_01");
}

func void RTN_Q102_RUNTOCAVE_5() {
    TA_RUNTOWP_ONLYFIGHT(7, 0, 22, 0, "PART_13_FABIO_CAVE_01");
    TA_RUNTOWP_ONLYFIGHT(22, 0, 7, 0, "PART_13_FABIO_CAVE_01");
}

func void RTN_GUIDE01_5() {
    TA_GUIDE_PLAYER(7, 0, 22, 0, "PART_13_FABIO_CAVE_01");
    TA_GUIDE_PLAYER(22, 0, 7, 0, "PART_13_FABIO_CAVE_01");
}

func void RTN_CAVEMOLERAT_5() {
    TA_STAND_ARMSCROSSED(7, 0, 22, 0, "PART_13_NAV_86");
    TA_STAND_ARMSCROSSED(22, 0, 7, 0, "PART_13_NAV_86");
}

func void RTN_CAVE_5() {
    TA_STAND_ARMSCROSSED(7, 0, 22, 0, "PART_13_FABIO_CAVE_01");
    TA_STAND_ARMSCROSSED(22, 0, 7, 0, "PART_13_FABIO_CAVE_01");
}

func void RTN_BRUSHWOOD_5() {
    TA_RUNTOWP_ONLYFIGHT(7, 0, 22, 0, "PART_13_KAZEEM_GATHER");
    TA_RUNTOWP_ONLYFIGHT(22, 0, 7, 0, "PART_13_KAZEEM_GATHER");
}

func void RTN_Q102_COMEBACK_5() {
    TA_RUNTOWP_ONLYFIGHT(7, 0, 22, 0, "PART_13_FABIO_CAVE_01");
    TA_RUNTOWP_ONLYFIGHT(22, 0, 7, 0, "PART_13_FABIO_CAVE_01");
}

func void RTN_TOSILBACHWAIT_5() {
    TA_STAND_ARMSCROSSED(7, 0, 22, 0, "PART13_VILLAGE_FABIO_WAIT");
    TA_STAND_ARMSCROSSED(22, 0, 7, 0, "PART13_VILLAGE_FABIO_WAIT");
}

func void RTN_TOSILBACHPUB_5() {
    TA_FOLLOW_PLAYER(7, 0, 22, 0, "VILLAGE_PUB_ENTRY");
    TA_FOLLOW_PLAYER(22, 0, 7, 0, "VILLAGE_PUB_ENTRY");
}

func void RTN_PUB01_5() {
    TA_SIT_CHAIR(7, 0, 22, 0, "VILLAGE_PUB_SIT_01");
    TA_SIT_CHAIR(22, 0, 7, 0, "VILLAGE_PUB_SIT_01");
}

func void RTN_Q104WAIT_5() {
    TA_SIT_THRONE(0, 0, 9, 0, "PART12_RAMSEYHOUSE_09");
    TA_SIT_THRONE(9, 0, 0, 0, "PART12_RAMSEYHOUSE_09");
}

func void RTN_WORK_5() {
    TA_SWEEP_FP(7, 0, 10, 0, "VILLAGE_PLACE_37");
    TA_PLUNDER(10, 0, 11, 0, "VILLAGE_SHEEP_13");
    TA_STAND_SWEEPING(11, 0, 12, 30, "VILLAGE_SHEEP_12");
    TA_PLUNDER(12, 30, 14, 25, "VILLAGE_SHEEP_11");
    TA_VOMIT(14, 25, 16, 25, "VILLAGE_PLACE_40");
    TA_SIT_CHAIR_SMOKE(16, 25, 19, 0, "VILLAGE_CHAIR_01");
    TA_SIT_CHAIR_DRINK(19, 0, 7, 0, "VILLAGE_CHAIR_01");
}

func void RTN_Q401_WOLFSDEN_5() {
    TA_SIT_BENCH(7, 0, 10, 0, "PART16_PATH_139");
    TA_SIT_SLAVSQUAT(10, 0, 15, 0, "PART16_PATH_18");
    TA_SMALLTALK(15, 0, 17, 0, "PART16_SMALLTALK_01");
    TA_SIT_BENCH_DRINK(17, 0, 21, 0, "PART16_PATH_139");
    TA_SLEEP(21, 0, 7, 0, "PART16_PATH_140");
}

func void RTN_Q401_SCARED_5() {
    TA_SEARCH_SCARED(22, 0, 7, 30, "PART16_PATH_109");
    TA_SEARCH_SCARED(7, 30, 22, 0, "PART16_PATH_109");
}

func void RTN_Q401_SWAMP_5() {
    TA_PLUNDER(7, 0, 10, 0, RNG_ZOMBIEFABIO01_WAYPOINT);
    TA_FIREPLACE(10, 0, 12, 0, "PART11_SWAMP_CAMP_08");
    TA_SIT_BENCH(12, 0, 14, 0, "PART11_SWAMP_BENCH_01");
    TA_PLUNDER(14, 0, 17, 0, "PART11_SWAMP_22");
    TA_SIT_TURKISH(17, 0, 19, 0, "PART11_SWAMP_CAMP_08");
    TA_PLUNDER(19, 0, 22, 0, RNG_ZOMBIEFABIO01_WAYPOINT);
    TA_SLEEP(22, 0, 7, 0, "PART11_SWAMPHOUSE_BED_03");
}

func void RTN_TOT_5() {
    TA_STAND_ARMSCROSSED(7, 0, 22, 0, TOT);
    TA_STAND_ARMSCROSSED(22, 0, 7, 0, TOT);
}

func void RTN_TOT2_5() {
    TA_STAND_ARMSCROSSED(7, 0, 22, 0, TOT2);
    TA_STAND_ARMSCROSSED(22, 0, 7, 0, TOT2);
}

