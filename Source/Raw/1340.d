instance MIL_13512_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 0x34c8;
    VOICE = 35;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_13512_MILITIA, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13512_MILITIA, MALE, HUMHEADTHIEF, FACE_N_MILITIA87, 1, 0x8aad);
    MDL_APPLYOVERLAYMDS(MIL_13512_MILITIA, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13512_MILITIA);
    B_GIVENPCTALENTS(MIL_13512_MILITIA);
    B_SETFIGHTSKILLS(MIL_13512_MILITIA, 40);
    DAILY_ROUTINE = RTN_START_13512;
    AIVAR[74] = NPC_QM401_RENEGADEATTACKGROUP;
}

func void RTN_START_13512() {
    TA_MILJOIN(8, 0, 13, 0, "PARTM3_QM401_SPOT_02");
    TA_MILJOIN(13, 0, 8, 0, "PARTM3_QM401_SPOT_02");
}

func void RTN_QM401_CAVEATTACK_BEFORE_13512() {
    TA_STAYSTRAIGHT(4, 30, 20, 0, TOT2);
    TA_STAND_GUARDING(20, 0, 4, 30, "PART7_QM401_BEFORE_SPOT_02");
}

func void RTN_QM401_CAVEATTACK_13512() {
    TA_RUNTOWP(3, 0, 20, 0, "PART7_CAVE_BRODDY");
    TA_RUNTOWP(20, 0, 3, 0, "PART7_CAVE_BRODDY");
}

func void RTN_QM401_CAVESEARCH_13512() {
    TA_TABLEBOOK(3, 0, 20, 0, "PART7_CAVE_SALVI_STAND");
    TA_TABLEBOOK(20, 0, 3, 0, "PART7_CAVE_SALVI_STAND");
}

func void RTN_QM401_CAVEATTACK_AFTER_13512() {
    TA_STAND_GUARDING(3, 0, 20, 0, "PART7_QM401_BEFORE_SPOT_02");
    TA_STAND_GUARDING(20, 0, 3, 0, "PART7_QM401_BEFORE_SPOT_02");
}

func void RTN_TOT_13512() {
    TA_STAND_ARMSCROSSED(3, 0, 20, 0, TOT);
    TA_STAND_ARMSCROSSED(20, 0, 3, 0, TOT);
}

func void RTN_QM401_VIENYARD_13512() {
    TA_SMALLTALK(3, 0, 20, 0, "PART9_QM401_SMALLTALK_02");
    TA_SMALLTALK(20, 0, 3, 0, "PART9_QM401_SMALLTALK_02");
}

func void RTN_QM401_VIENYARD_SCYTHE_13512() {
    TA_SCYTHE_USEMOB(8, 0, 22, 0, "QM401_SCYTHE_FARN_02");
    TA_SCYTHE_USEMOB(22, 0, 8, 0, "QM401_SCYTHE_FARN_02");
}

func void RTN_QM401_VIENYARD_STONES_13512() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PART9_QM401_MILITIA_04");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PART9_QM401_MILITIA_04");
}

func void RTN_QM401_VINEYARD_PREPAREATTACK_13512() {
    TA_SIT_SLAVSQUAT(8, 0, 22, 0, "PART2_PATH_40B");
    TA_SIT_SLAVSQUAT(22, 0, 8, 0, "PART2_PATH_40B");
}

func void RTN_QM401_VIENYARD_WAIT_13512() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 22, 0, "PART2_QM401_HIDE_04");
    TA_STAYSTRAIGHT_NOIQ(22, 0, 8, 0, "PART2_QM401_HIDE_04");
}

func void RTN_QM401_VIENYARD_FIGHT_13512() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART9_QM401_FIGHTSPOT_15");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART9_QM401_FIGHTSPOT_15");
}

func void RTN_QM401_VIENYARD_TIRED_13512() {
    TA_BREATH(8, 0, 9, 0, "PART9_QM401_FIGHTSPOT_15");
    TA_BREATH(9, 0, 8, 0, "PART9_QM401_FIGHTSPOT_15");
}
