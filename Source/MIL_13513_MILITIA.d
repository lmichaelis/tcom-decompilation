instance MIL_13513_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 13513;
    VOICE = 43;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_13513_MILITIA, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13513_MILITIA, MALE, HUMHEADBALD, FACE_N_MILITIA88, 1, 35501);
    MDL_APPLYOVERLAYMDS(MIL_13513_MILITIA, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13513_MILITIA);
    B_GIVENPCTALENTS(MIL_13513_MILITIA);
    B_SETFIGHTSKILLS(MIL_13513_MILITIA, 40);
    DAILY_ROUTINE = RTN_START_13513;
    AIVAR[74] = NPC_QM401_RENEGADEATTACKGROUP;
}

func void RTN_START_13513() {
    TA_MILJOIN(8, 0, 13, 0, "PARTM3_QM401_SPOT_03");
    TA_MILJOIN(13, 0, 8, 0, "PARTM3_QM401_SPOT_03");
}

func void RTN_QM401_CAVEATTACK_BEFORE_13513() {
    TA_STAYSTRAIGHT(4, 30, 20, 0, TOT2);
    TA_CHECKSWD(20, 0, 4, 30, "PART7_QM401_BEFORE_SPOT_04");
}

func void RTN_QM401_CAVEATTACK_13513() {
    TA_RUNTOWP(3, 0, 20, 0, "PART7_CAVE_LEAN_01");
    TA_RUNTOWP(20, 0, 3, 0, "PART7_CAVE_LEAN_01");
}

func void RTN_QM401_CAVESEARCH_13513() {
    TA_PLUNDER(3, 0, 20, 0, "PART7_PATH_60");
    TA_PLUNDER(20, 0, 3, 0, "PART7_PATH_60");
}

func void RTN_QM401_CAVESEARCH_V2_13513() {
    TA_PLUNDER(3, 0, 20, 0, "PART7_CAVE_PLUNDER_02");
    TA_PLUNDER(20, 0, 3, 0, "PART7_CAVE_PLUNDER_02");
}

func void RTN_QM401_FOLLOW_13513() {
    TA_FOLLOW_PLAYER(3, 0, 20, 0, "PART7_CAVE_67");
    TA_FOLLOW_PLAYER(20, 0, 3, 0, "PART7_CAVE_67");
}

func void RTN_QM401_GUIDE_WATERFALL_13513() {
    TA_GUIDE_PLAYER_NOSOUND(3, 0, 20, 0, "PART7_PATH_60");
    TA_GUIDE_PLAYER_NOSOUND(20, 0, 3, 0, "PART7_PATH_60");
}

func void RTN_QM401_CAVEATTACK_AFTER_13513() {
    TA_STAYSTRAIGHT(3, 0, 20, 0, "PART7_PATH_99");
    TA_STAYSTRAIGHT(20, 0, 3, 0, "PART7_PATH_99");
}

func void RTN_TOT_13513() {
    TA_STAND_ARMSCROSSED(3, 0, 20, 0, TOT);
    TA_STAND_ARMSCROSSED(20, 0, 3, 0, TOT);
}

func void RTN_QM401_VIENYARD_13513() {
    TA_STAND_ARMSCROSSED(3, 0, 20, 0, "PART9_QM401_MILITIA_01");
    TA_STAND_ARMSCROSSED(20, 0, 3, 0, "PART9_QM401_MILITIA_01");
}

func void RTN_QM401_VIENYARD_STONES_13513() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PART9_QM401_MILITIA_05");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PART9_QM401_MILITIA_05");
}

func void RTN_QM401_VINEYARD_PREPAREATTACK_13513() {
    TA_SMALLTALK(8, 0, 22, 0, "PART2_QM401_SMALLTALK_02");
    TA_SMALLTALK(22, 0, 8, 0, "PART2_QM401_SMALLTALK_02");
}

func void RTN_QM401_VIENYARD_WAIT_13513() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 22, 0, "PART2_QM401_HIDE_03");
    TA_STAYSTRAIGHT_NOIQ(22, 0, 8, 0, "PART2_QM401_HIDE_03");
}

func void RTN_QM401_VIENYARD_FIGHT_13513() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART9_QM401_FIGHTSPOT_16");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART9_QM401_FIGHTSPOT_16");
}

func void RTN_QM401_VIENYARD_TIRED_13513() {
    TA_BREATH(8, 0, 9, 0, "PART9_QM401_FIGHTSPOT_16");
    TA_BREATH(9, 0, 8, 0, "PART9_QM401_FIGHTSPOT_16");
}
