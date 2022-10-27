instance MIL_4001_OKTAV(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_OKTAV;
    GUILD = GIL_MIL;
    ID = 0xfa1;
    VOICE = 70;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_4001_OKTAV, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(MIL_4001_OKTAV, 0x9a41);
    B_SETNPCVISUAL(MIL_4001_OKTAV, MALE, HUMHEADBALD, FACE_N_OKTAV, 1, 0x8aad);
    MDL_APPLYOVERLAYMDS(MIL_4001_OKTAV, HUMANSMILITIAMDS);
    B_CREATEAMBIENTINV(MIL_4001_OKTAV);
    B_GIVENPCTALENTS(MIL_4001_OKTAV);
    B_SETFIGHTSKILLS(MIL_4001_OKTAV, 40);
    DAILY_ROUTINE = RTN_START_4001;
}

func void RTN_START_4001() {
    TA_STAND_ARMSCROSSED(8, 0, 13, 0, "PARTM3_STAND_01");
    TA_CHECKSWD(13, 0, 15, 20, "PARTM3_STAND_01");
    TA_STAND_GUARDING(15, 20, 19, 0, "PARTM3_STAND_01");
    TA_SMALLTALK(19, 0, 20, 0, "PARTM3_SMALLTALK_02");
    TA_CHECKSWD(20, 0, 21, 0, "PARTM3_STAND_01");
    TA_STAND_ARMSCROSSED(21, 0, 22, 0, "PARTM3_STAND_01");
    TA_SLEEP(22, 0, 8, 0, "PARTM3_BARRACK_HOUSE3_BED_05");
}

func void RTN_JOININGMILITIA_4001() {
    TA_MILJOIN(8, 0, 16, 0, "PARTM3_JOININGMILITIA_WATCH_13");
    TA_MILJOIN(16, 0, 8, 0, "PARTM3_JOININGMILITIA_WATCH_13");
}

func void RTN_JOININGMILITIA_TAVERN_4001() {
    TA_STAND_DRINKING(8, 0, 22, 0, "PARTM4_TAVERN_20");
    TA_STAND_DRINKING(22, 0, 8, 0, "PARTM4_TAVERN_20");
}

func void RTN_PRISON_4001() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PARTM3_PRISON_18");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PARTM3_PRISON_18");
}

func void RTN_PRISONCUTSCENE_4001() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PARTM3_PRISON_CUTSCENE_01");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PARTM3_PRISON_CUTSCENE_01");
}

func void RTN_QM202_FINISH_4001() {
    TA_STAND_ARMSCROSSED(8, 0, 13, 0, "PARTM3_STAND_01");
    TA_STAND_ARMSCROSSED(13, 0, 8, 0, "PARTM3_STAND_01");
}

func void RTN_QM401_BARRACK_4001() {
    TA_STAYSTRAIGHT(8, 0, 13, 0, "PARTM3_QM401_OKTAV");
    TA_STAYSTRAIGHT(13, 0, 8, 0, "PARTM3_QM401_OKTAV");
}

func void RTN_QM401_CAVEATTACK_BEFORE_V1_4001() {
    TA_STAYSTRAIGHT(4, 30, 20, 0, TOT);
    TA_STAYSTRAIGHT(20, 0, 4, 30, "PART7_QM401_BEFORE_SPOT_03");
}

func void RTN_QM401_CAVEATTACK_BEFORE_V2_4001() {
    TA_STAYSTRAIGHT(4, 30, 20, 0, TOT);
    TA_STAYSTRAIGHT(20, 0, 4, 30, "PART7_QM401_BEFORE_SPOT_06");
}

func void RTN_QM401_CAVEATTACK_4001() {
    TA_RUNTOWP(3, 0, 20, 0, "PART7_CAVE_77");
    TA_RUNTOWP(20, 0, 3, 0, "PART7_CAVE_77");
}

func void RTN_LORENZOISGONE_4001() {
    TA_LORENZOISGONE(8, 0, 22, 0, "XXX");
    TA_LORENZOISGONE(22, 0, 8, 0, "XXX");
}

func void RTN_QM401_CAVESEARCH_4001() {
    TA_STAND_ARMSCROSSED(3, 0, 20, 0, "PART7_CAVE_50");
    TA_STAND_ARMSCROSSED(20, 0, 3, 0, "PART7_CAVE_50");
}

func void RTN_QM401_CAVEATTACK_AFTER_4001() {
    TA_STAYSTRAIGHT(3, 0, 20, 0, "PART7_QM401_BEFORE_SPOT_03");
    TA_STAYSTRAIGHT(20, 0, 3, 0, "PART7_QM401_BEFORE_SPOT_03");
}

func void RTN_QM401_VIENYARD_4001() {
    TA_LOOKOUT(3, 0, 20, 0, "PART9_QM401_OKTAV");
    TA_LOOKOUT(20, 0, 3, 0, "PART9_QM401_OKTAV");
}

func void RTN_QM401_VIENYARD_PATROL_4001() {
    TA_LOOKOUT(3, 0, 20, 0, "PART9_QM401_OKTAV_02");
    TA_LOOKOUT(20, 0, 3, 0, "PART9_QM401_OKTAV_02");
}

func void RTN_QM401_VIENYARD_STONES_4001() {
    TA_WAITING(8, 0, 22, 0, "PART9_QM401_MILITIA_07");
    TA_WAITING(22, 0, 8, 0, "PART9_QM401_MILITIA_07");
}

func void RTN_QM401_VINEYARD_PREPAREATTACK_4001() {
    TA_LOOKOUT(8, 0, 22, 0, "PARTM2_QM401_OKTAV_LOOKOUT");
    TA_LOOKOUT(22, 0, 8, 0, "PARTM2_QM401_OKTAV_LOOKOUT");
}

func void RTN_QM401_VIENYARD_WAIT_4001() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 22, 0, "PART2_QM401_HIDE_06");
    TA_STAYSTRAIGHT_NOIQ(22, 0, 8, 0, "PART2_QM401_HIDE_06");
}

func void RTN_QM401_VIENYARD_FIGHT_4001() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART9_QM401_FIGHTSPOT_13");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART9_QM401_FIGHTSPOT_13");
}

func void RTN_QM401_VIENYARD_TIRED_4001() {
    TA_BREATH(8, 0, 9, 0, "PART9_QM401_FIGHTSPOT_13");
    TA_BREATH(9, 0, 8, 0, "PART9_QM401_FIGHTSPOT_13");
}

func void RTN_SQ505_BRIDGE_4001() {
    TA_WAITING(7, 0, 21, 0, "PARTM3_SQ505_OKTAV");
    TA_STAND_ARMSCROSSED(21, 0, 22, 0, "PARTM3_STAND_01");
    TA_SLEEP(22, 0, 7, 0, "PARTM3_BARRACK_HOUSE3_BED_05");
}

func void RTN_SQ505_TRACE_4001() {
    TA_STAND_ARMSCROSSED(7, 0, 21, 0, TOT);
    TA_STAND_ARMSCROSSED(21, 0, 7, 0, TOT);
}

func void RTN_KQ407_KALEB_4001() {
    TA_STAYSTRAIGHT(7, 0, 21, 0, "HARBOUR_HOUSE01_KQ407_OKTAV");
    TA_STAYSTRAIGHT(21, 0, 7, 0, "HARBOUR_HOUSE01_KQ407_OKTAV");
}

func void RTN_KQ407_ORCFIGHT_WAIT_4001() {
    TA_LOOKOUT(7, 0, 21, 0, "PART17_KQ407_OKTAV_STAND_01");
    TA_LOOKOUT(21, 0, 7, 0, "PART17_KQ407_OKTAV_STAND_01");
}

func void RTN_KQ407_ORCFIGHT_4001() {
    TA_GUIDE_PLAYER(7, 0, 21, 0, "PART15_PATH_223");
    TA_GUIDE_PLAYER(21, 0, 7, 0, "PART15_PATH_223");
}

