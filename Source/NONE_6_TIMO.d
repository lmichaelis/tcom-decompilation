instance NONE_6_TIMO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_TIMO;
    GUILD = GIL_NONE;
    ID = 6;
    VOICE = 35;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[95] = TRUE;
    B_SETATTRIBUTESTOLEVEL(NONE_6_TIMO, 4);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NONE_6_TIMO, MALE, HUMHEADPONY, FACE_N_TIMO, 8, 33906);
    MDL_APPLYOVERLAYMDS(NONE_6_TIMO, HUMANSRELAXEDMDS);
    B_CREATEAMBIENTINV(NONE_6_TIMO);
    B_GIVENPCTALENTS(NONE_6_TIMO);
    B_SETFIGHTSKILLS(NONE_6_TIMO, 30);
    DAILY_ROUTINE = RTN_START_6;
}

func void RTN_START_6() {
    TA_PLUNDER(7, 0, 22, 0, "SHIP_TIMO_01");
    TA_PLUNDER(22, 0, 7, 0, "SHIP_TIMO_01");
}

func void RTN_SHIP_6() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "SHIP_TIMO_02");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "SHIP_TIMO_02");
}

func void RTN_Q102_ALIVE_6() {
    TA_SEARCH_SCARED(7, 0, 22, 0, "PART_13_TIMO_ALIVE");
    TA_SEARCH_SCARED(22, 0, 7, 0, "PART_13_TIMO_ALIVE");
}

func void RTN_Q102_RUNTOSILBACH_6() {
    TA_RUNTOWP_ONLYFIGHT(7, 0, 22, 0, "VILLAGE_PUB_ROOM01_PATH03");
    TA_RUNTOWP_ONLYFIGHT(22, 0, 7, 0, "VILLAGE_PUB_ROOM01_PATH03");
}

func void RTN_Q102_CAVE_6() {
    TA_IDLE(7, 0, 22, 0, "PART13_CAVE_TIMO");
    TA_IDLE(22, 0, 7, 0, "PART13_CAVE_TIMO");
}

func void RTN_Q102_SITCAVE_6() {
    TA_STAND_EATING(7, 0, 22, 0, "PART13_CAMPFIRE_STAND_03");
    TA_STAND_EATING(22, 0, 7, 0, "PART13_CAMPFIRE_STAND_03");
}

func void RTN_PUB01_6() {
    TA_SIT_CHAIR(7, 0, 22, 0, "VILLAGE_PUB_10");
    TA_SIT_CHAIR(22, 0, 7, 0, "VILLAGE_PUB_10");
}

func void RTN_Q104WAIT_6() {
    TA_IDLE(7, 0, 22, 0, "PART12_RAMSEYHOUSE_23");
    TA_IDLE(22, 0, 7, 0, "PART12_RAMSEYHOUSE_23");
}

func void RTN_WORK_6() {
    TA_STAND_SWEEPING(7, 0, 11, 0, "VILLAGE_MILL_06");
    TA_PLUNDER(11, 0, 14, 0, "VILLAGE_MILL_05");
    TA_PLUNDER(14, 0, 15, 30, "VILLAGE_MILL_06");
    TA_STAND_EATING(15, 30, 16, 30, "VILLAGE_FIREPLACE_05");
    TA_STAND_DRINKING(16, 30, 17, 30, "VILLAGE_FIREPLACE_05");
    TA_SMALLTALK(17, 30, 20, 0, "VILLAGE_PLACE_23");
    TA_SIT_CHAIR(20, 0, 7, 0, "VILLAGE_CHAIR_06");
}

func void RTN_SLD_6() {
    TA_SIT_SLAVSQUAT(7, 0, 22, 0, TIMO_SLD_WAYPOINT);
    TA_SIT_SLAVSQUAT(22, 0, 7, 0, TIMO_SLD_WAYPOINT);
}

func void RTN_MIL_6() {
    TA_SIT_TURKISH(7, 0, 22, 0, TIMO_MIL_WAYPOINT);
    TA_SIT_TURKISH(22, 0, 7, 0, TIMO_MIL_WAYPOINT);
}

func void RTN_TOT_6() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}

