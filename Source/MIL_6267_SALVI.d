instance MIL_6267_SALVI(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_SALVI;
    GUILD = GIL_NONE;
    ID = 6267;
    VOICE = 7;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_6267_SALVI, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(MIL_6267_SALVI, 39513);
    CREATEINVITEMS(MIL_6267_SALVI, 36884, 1);
    B_CREATEAMBIENTINV(MIL_6267_SALVI);
    B_SETNPCVISUAL(MIL_6267_SALVI, MALE, HUMHEADTHIEF, FACE_N_SALVI, 1, 35511);
    B_GIVENPCTALENTS(MIL_6267_SALVI);
    B_SETFIGHTSKILLS(MIL_6267_SALVI, 45);
    DAILY_ROUTINE = RTN_START_6267;
}

func void RTN_START_6267() {
    TA_TABLEBOOK(8, 0, 9, 0, "PART7_CAVE_SALVI_STAND");
    TA_TABLEBOOK(9, 0, 8, 0, "PART7_CAVE_SALVI_STAND");
}

func void RTN_PRISON_6267() {
    TA_IDLE(8, 0, 9, 0, "PART7_CAVE_47");
    TA_IDLE(9, 0, 8, 0, "PART7_CAVE_47");
}

func void RTN_IDLE_6267() {
    TA_IDLE(8, 0, 9, 0, "PART7_CAVE_50");
    TA_IDLE(9, 0, 8, 0, "PART7_CAVE_50");
}

func void RTN_DANIEL_6267() {
    TA_STAND_ARMSCROSSED(8, 0, 9, 0, "PART7_CAVE_BRODDY");
    TA_STAND_ARMSCROSSED(9, 0, 8, 0, "PART7_CAVE_BRODDY");
}

func void RTN_CAVE_6267() {
    TA_TABLEBOOK(22, 0, 14, 0, "PART7_CAVE_SALVI_STAND");
    TA_SMOKE_JOINT(14, 0, 17, 0, "PART7_CAVE_SALVI_STAND");
    TA_TABLEBOOK(17, 0, 20, 0, "PART7_CAVE_SALVI_STAND");
    TA_SMOKE_JOINT(20, 0, 22, 0, "PART7_CAVE_SALVI_STAND");
}

func void RTN_TOT_6267() {
    TA_STAND_ARMSCROSSED(8, 0, 9, 0, TOT2);
    TA_STAND_ARMSCROSSED(9, 0, 8, 0, TOT2);
}

func void RTN_QM401_VIENYARD_WAIT_6267() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 9, 0, "PART2_PATH_11");
    TA_STAYSTRAIGHT_NOIQ(9, 0, 8, 0, "PART2_PATH_11");
}

func void RTN_QM401_VIENYARD_WALK_6267() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 9, 0, "PART9_PATH_72");
    TA_STAYSTRAIGHT_NOIQ(9, 0, 8, 0, "PART9_PATH_72");
}

func void RTN_QM401_VIENYARD_FIGHT_6267() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART9_QM401_FIGHTSPOT_11");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART9_QM401_FIGHTSPOT_11");
}

