instance NONE_1_JORN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_JORN;
    GUILD = GIL_NONE;
    ID = 1;
    VOICE = 49;
    FLAGS = NPC_FLAG_IMMORTAL;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[95] = TRUE;
    EQUIPITEM(NONE_1_JORN, 0x84d0);
    B_SETATTRIBUTESTOLEVEL(NONE_1_JORN, 6);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_1_JORN, MALE, HUMHEADBALD, FACE_N_JORN, BODYTEX_N, 0x8af5);
    MDL_SETMODELFATNESS(NONE_1_JORN, 0x40000000);
    B_CREATEAMBIENTINV(NONE_1_JORN);
    B_GIVENPCTALENTS(NONE_1_JORN);
    B_SETFIGHTSKILLS(NONE_1_JORN, 10);
    DAILY_ROUTINE = RTN_START_1;
}

func void RTN_START_1() {
    TA_STAND_GUARDING(7, 0, 22, 0, "SHIP_JORN_01");
    TA_STAND_GUARDING(22, 0, 7, 0, "SHIP_JORN_01");
}

func void RTN_SHIP01_1() {
    TA_STAND_GUARDING(7, 0, 22, 0, "SHIP_JORN_02");
    TA_STAND_GUARDING(22, 0, 7, 0, "SHIP_JORN_02");
}

func void RTN_SHIP02_1() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "SHIP_JORN_03");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "SHIP_JORN_03");
}

func void RTN_BEACH_1() {
    TA_SEARCH(7, 0, 22, 0, "PART_13_JORN_01");
    TA_SEARCH(22, 0, 7, 0, "PART_13_JORN_01");
}

func void RTN_WAIT_1() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PART_13_NAV_03");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PART_13_NAV_03");
}

func void RTN_Q102_RUNTOSILBACH_1() {
    TA_RUNTOWP_ONLYFIGHT(7, 0, 22, 0, "VILLAGE_PUB_ROOM01_PATH03");
    TA_RUNTOWP_ONLYFIGHT(22, 0, 7, 0, "VILLAGE_PUB_ROOM01_PATH03");
}

func void RTN_GUIDE00_1() {
    TA_GUIDE_PLAYER(7, 0, 22, 0, "PART_13_NAV_03");
    TA_GUIDE_PLAYER(22, 0, 7, 0, "PART_13_NAV_03");
}

func void RTN_GUIDE01_1() {
    TA_GUIDE_PLAYER(7, 0, 22, 0, "PART_13_NAV_11");
    TA_GUIDE_PLAYER(22, 0, 7, 0, "PART_13_NAV_11");
}

func void RTN_GUIDE02_1() {
    TA_GUIDE_PLAYER(7, 0, 22, 0, "PART_13_JORN_RIVER_01");
    TA_GUIDE_PLAYER(22, 0, 7, 0, "PART_13_JORN_RIVER_01");
}

func void RTN_GUIDE03_1() {
    TA_GUIDE_PLAYER(7, 0, 22, 0, "PART_13_NAV_57");
    TA_GUIDE_PLAYER(22, 0, 7, 0, "PART_13_NAV_57");
}

func void RTN_HOUSE01_1() {
    TA_GUIDE_PLAYER(7, 0, 22, 0, "PART_13_NAV_73");
    TA_GUIDE_PLAYER(22, 0, 7, 0, "PART_13_NAV_73");
}

func void RTN_GUIDE04_1() {
    TA_GUIDE_PLAYER(7, 0, 22, 0, "PART13_PATH_10");
    TA_GUIDE_PLAYER(22, 0, 7, 0, "PART13_PATH_10");
}

func void RTN_GUIDE05_1() {
    TA_FOLLOW_PLAYER(7, 0, 22, 0, RND_AV_HARRY_WAYPOINT);
    TA_FOLLOW_PLAYER(22, 0, 7, 0, RND_AV_HARRY_WAYPOINT);
}

func void RTN_Q102_TOSILBACH01_1() {
    TA_GUIDE_PLAYER(7, 0, 22, 0, "PART13_VILLAGE_FABIO_WAIT");
    TA_GUIDE_PLAYER(22, 0, 7, 0, "PART13_VILLAGE_FABIO_WAIT");
}

func void RTN_Q102_TOSILBACHWAIT_1() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PART13_VILLAGE_FABIO_WAIT");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PART13_VILLAGE_FABIO_WAIT");
}

func void RTN_TOSILBACHPUB_1() {
    TA_RUNTOWP(7, 0, 22, 0, "VILLAGE_PLACE_15");
    TA_RUNTOWP(22, 0, 7, 0, "VILLAGE_PLACE_15");
}

func void RTN_TOSILBACHPUBWAIT_1() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "VILLAGE_PUB_ENTRY");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "VILLAGE_PUB_ENTRY");
}

func void RTN_SILBACHPUB_1() {
    TA_SIT_CHAIR(7, 0, 22, 0, "VILLAGE_PUB_14");
    TA_SIT_CHAIR(22, 0, 7, 0, "VILLAGE_PUB_14");
}

func void RTN_SILBACHPUB2_1() {
    TA_SLEEP(7, 0, 22, 0, "VILLAGE_PUB_ROOM01_PATH03");
    TA_SLEEP(22, 0, 7, 0, "VILLAGE_PUB_ROOM01_PATH03");
}

func void RTN_Q108_MEETING_1() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "VILLAGE_Q108_JORN");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "VILLAGE_Q108_JORN");
}

func void RTN_Q104_TAVERN_1() {
    TA_OBSERVE(7, 0, 22, 0, "VILLAGE_PUB_37");
    TA_OBSERVE(22, 0, 7, 0, "VILLAGE_PUB_37");
}

func void RTN_Q104_WORK_1() {
    TA_SIT_CHAIR_PLANING(7, 0, 22, 0, "VILLAGE_PUB_27");
    TA_SLEEP(22, 0, 7, 0, "VILLAGE_PUB_ROOM01_PATH03");
}

func void RTN_PLUNDERHOUSE2_1() {
    TA_PLUNDER(7, 0, 22, 0, "PART_13_HUT_02");
    TA_PLUNDER(22, 0, 7, 0, "PART_13_HUT_02");
}

func void RTN_MEETINGWITHKURT_1() {
    TA_SIT_CHAIR(7, 0, 22, 0, "VILLAGE_PUB_ROOM01_CHAIR");
    TA_SIT_CHAIR(22, 0, 7, 0, "VILLAGE_PUB_ROOM01_CHAIR");
}

func void RTN_Q105_SEEFIGHT_1() {
    TA_GUIDE_PLAYER(7, 0, 22, 0, "VILLAGE_Q105_FIGHT");
    TA_GUIDE_PLAYER(22, 0, 7, 0, "VILLAGE_Q105_FIGHT");
}

func void RTN_Q105_FIGHT_1() {
    TA_OBSERVE(7, 0, 22, 0, "VILLAGE_Q105_FIGHT");
    TA_OBSERVE(22, 0, 7, 0, "VILLAGE_Q105_FIGHT");
}

func void RTN_Q105_SEEBAKER_1() {
    TA_GUIDE_PLAYER(7, 0, 22, 0, "VILLAGE_Q105_JORN");
    TA_GUIDE_PLAYER(22, 0, 7, 0, "VILLAGE_Q105_JORN");
}

func void RTN_Q105_BAKER_1() {
    TA_OBSERVE(7, 0, 22, 0, "VILLAGE_Q105_JORN");
    TA_OBSERVE(22, 0, 7, 0, "VILLAGE_Q105_JORN");
}

func void RTN_Q105_STEALBREAD_1() {
    TA_GUIDE_PLAYER(7, 0, 22, 0, "VILLAGE_Q105_STEALBREAD_JORN");
    TA_GUIDE_PLAYER(22, 0, 7, 0, "VILLAGE_Q105_STEALBREAD_JORN");
}

func void RTN_Q105_RUNTOHUT_1() {
    TA_GUIDE_PLAYER(8, 0, 22, 0, "VILLAGE_Q105_BEER");
    TA_GUIDE_PLAYER(22, 0, 8, 0, "VILLAGE_Q105_BEER");
}

func void RTN_Q105_RUNTOHUT_WAIT_1() {
    TA_OBSERVE(8, 0, 22, 0, "VILLAGE_Q105_BEER");
    TA_OBSERVE(22, 0, 8, 0, "VILLAGE_Q105_BEER");
}

func void RTN_Q105_RIVER_1() {
    TA_WASH_FP(8, 0, 22, 0, "VILLAGE_WASH_RIVER_01");
    TA_WASH_FP(22, 0, 8, 0, "VILLAGE_WASH_RIVER_01");
}

func void RTN_Q105_TAVERN_1() {
    TA_OBSERVE(7, 0, 22, 0, "VILLAGE_PLACE_48");
    TA_OBSERVE(22, 0, 7, 0, "VILLAGE_PLACE_48");
}

func void RTN_Q105_KURTHOUSE_1() {
    TA_GUIDE_PLAYER(8, 0, 22, 0, "VILLAGE_KURTHOUSE_03");
    TA_GUIDE_PLAYER(22, 0, 8, 0, "VILLAGE_KURTHOUSE_03");
}

func void RTN_Q105_KURTHOUSE_WAIT_1() {
    TA_OBSERVE(8, 0, 22, 0, "VILLAGE_KURTHOUSE_03");
    TA_OBSERVE(22, 0, 8, 0, "VILLAGE_KURTHOUSE_03");
}

func void RTN_Q105_SEARCH_1() {
    TA_PLUNDER(8, 0, 22, 0, "VILLAGE_KURTHOUSE_Q105_PLUNDER");
    TA_PLUNDER(22, 0, 8, 0, "VILLAGE_KURTHOUSE_Q105_PLUNDER");
}

func void RTN_Q105_TEACH_1() {
    TA_OBSERVE(8, 0, 22, 0, "VILLAGE_KURTHOUSE_Q105_PLUNDER");
    TA_OBSERVE(22, 0, 8, 0, "VILLAGE_KURTHOUSE_Q105_PLUNDER");
}

func void RTN_Q105_BRIDGE_1() {
    TA_GUIDE_PLAYER_BLIND(7, 0, 22, 0, "PART15_PATH_12");
    TA_GUIDE_PLAYER_BLIND(22, 0, 7, 0, "PART15_PATH_12");
}

func void RTN_DRUNKEN_1() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PART15_PATH_06");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PART15_PATH_06");
}

func void RTN_DRUNKENCAM_1() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PART15_PATH_04");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PART15_PATH_04");
}

func void RTN_KURTHUT_1() {
    TA_SLEEP(8, 0, 20, 0, "VILLAGE_KURTHOUSE_04");
    TA_SLEEP(20, 0, 8, 0, "VILLAGE_KURTHOUSE_04");
}

func void RTN_TOT_1() {
    TA_STAND_GUARDING(8, 0, 22, 0, TOT);
    TA_STAND_GUARDING(22, 0, 8, 0, TOT);
}

func void RTN_Q405_OWO_1() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "SLUMS_HOUSE17_36");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "SLUMS_HOUSE17_36");
}

