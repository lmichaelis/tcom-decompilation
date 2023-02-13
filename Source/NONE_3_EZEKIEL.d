instance NONE_3_EZEKIEL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_EZEKIEL;
    GUILD = GIL_NONE;
    ID = 3;
    VOICE = 70;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[95] = TRUE;
    B_SETATTRIBUTESTOLEVEL(NONE_3_EZEKIEL, 3);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NONE_3_EZEKIEL, MALE, HUMHEADFATBALD, FACE_N_EZEKIEL, BODYTEX_N, 35545);
    MDL_APPLYOVERLAYMDS(NONE_3_EZEKIEL, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(NONE_3_EZEKIEL);
    B_SETFIGHTSKILLS(NONE_3_EZEKIEL, 30);
    DAILY_ROUTINE = RTN_START_3;
}

func void RTN_START_3() {
    TA_IDLE(7, 0, 22, 0, "SHIP_EZEKIEL_01");
    TA_IDLE(22, 0, 7, 0, "SHIP_EZEKIEL_01");
}

func void RTN_OBSERVE_3() {
    TA_OBSERVE(7, 0, 22, 0, "SHIP_EZEKIEL_01");
    TA_OBSERVE(22, 0, 7, 0, "SHIP_EZEKIEL_01");
}

func void RTN_SHIP_3() {
    TA_IDLE(7, 0, 22, 0, "SHIP_EZEKIEL_02");
    TA_IDLE(22, 0, 7, 0, "SHIP_EZEKIEL_02");
}

func void RTN_WAIT_3() {
    TA_IDLE(7, 0, 22, 0, "PART_13_EZEKIEL_ALIVE");
    TA_IDLE(22, 0, 7, 0, "PART_13_EZEKIEL_ALIVE");
}

func void RTN_TOT_3() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}

func void RTN_PRAY_3() {
    TA_SIT_DEPRESSION(7, 0, 22, 0, "PART_13_DARRYL_DEAD");
    TA_SIT_DEPRESSION(22, 0, 7, 0, "PART_13_DARRYL_DEAD");
}

func void RTN_Q102_CAVE_3() {
    TA_BREATH(7, 0, 22, 0, "PART13_CAVE_EZEKIEL");
    TA_BREATH(22, 0, 7, 0, "PART13_CAVE_EZEKIEL");
}

func void RTN_Q102_SITCAVE_3() {
    TA_SIT_DEPRESSION(7, 0, 22, 0, "PART13_CAMPFIRE_SIT_05");
    TA_SIT_DEPRESSION(22, 0, 7, 0, "PART13_CAMPFIRE_SIT_05");
}

func void RTN_PUB01_3() {
    TA_SIT_THRONE(7, 0, 17, 0, "VILLAGE_PUB_THRONE04");
    TA_STAND_DRINKING(17, 0, 7, 0, "VILLAGE_PUB_29");
}

func void RTN_SQ118_GUARD_3() {
    TA_CHECKSWD(8, 0, 17, 0, "VILLAGE_PATH_04");
    TA_CHECKSWD(17, 0, 8, 0, "VILLAGE_PATH_04");
}

func void RTN_SQ118_CUTSCENE_3() {
    TA_PRAY_NOIQ(8, 0, 17, 0, "VILLAGE_CEMETERY_SQ118_EZEKIEL");
    TA_PRAY_NOIQ(17, 0, 8, 0, "VILLAGE_CEMETERY_SQ118_EZEKIEL");
}

func void RTN_VILLAGE_3() {
    TA_SIT_THRONE(8, 0, 17, 0, "VILLAGE_PUB_THRONE04");
    TA_PRAY_INNOS_FP(17, 0, 8, 0, "VILLAGE_CEMETERY_SQ118_EZEKIEL");
}

func void RTN_SQ227_WORKFORBASTIAN_3() {
    TA_STAND_SWEEPING(7, 0, 18, 0, "VILLAGE_PUB_11");
    TA_STAND_SWEEPING(18, 0, 22, 0, "VILLAGE_PUB_20");
    TA_STAND_SWEEPING(22, 0, 7, 0, "VILLAGE_PUB_11");
}

func void RTN_SQ227_WAITFORMARVIN_3() {
    TA_SEARCH(7, 0, 18, 0, "VILLAGE_PLACE_15");
    TA_SEARCH(18, 0, 7, 0, "VILLAGE_PLACE_15");
}

func void RTN_TRADE_3() {
    TA_STAND_GUARDING(7, 0, 14, 0, "VILLAGE_MARKET_EZEKIEL");
    TA_STAND_ARMSCROSSED(14, 0, 22, 0, "VILLAGE_MARKET_EZEKIEL");
    TA_PRAY_INNOS_FP(22, 0, 7, 0, "VILLAGE_CEMETERY_SQ118_EZEKIEL");
}

