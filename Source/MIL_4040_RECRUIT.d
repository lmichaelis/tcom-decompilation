instance MIL_4040_RECRUIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_RECRUIT;
    GUILD = GIL_MIL;
    ID = 4040;
    VOICE = 3;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_4040_RECRUIT, 10);
    EQUIPITEM(MIL_4040_RECRUIT, 39506);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_CREATEAMBIENTINV(MIL_4040_RECRUIT);
    B_SETNPCVISUAL(MIL_4040_RECRUIT, MALE, HUMHEADPONY, FACE_N_RECRUIT01, 1, 35547);
    MDL_APPLYOVERLAYMDS(MIL_4040_RECRUIT, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(MIL_4040_RECRUIT);
    B_SETFIGHTSKILLS(MIL_4040_RECRUIT, 25);
    DAILY_ROUTINE = RTN_START_4040;
}

func void RTN_START_4040() {
    TA_PRACTICE_SWORD(7, 0, 8, 0, "PARTM3_PATH_23");
    TA_MILSTAND(8, 0, 16, 0, "PARTM3_RECRUIT_02");
    TA_PRACTICE_SWORD(16, 0, 7, 0, "PARTM3_PATH_23");
}

func void RTN_FIGHTCLUB_4040() {
    TA_PREPAREFORFIGHT(8, 0, 16, 0, "PARTM3_FIGHTCLUB_RECRUIT1");
    TA_PREPAREFORFIGHT(16, 0, 8, 0, "PARTM3_FIGHTCLUB_RECRUIT1");
}

func void RTN_SECONDFIGHT_4040() {
    TA_PREPAREFORFIGHT(8, 0, 16, 0, "PARTM3_FIGHTCLUB_RECRUIT2");
    TA_PREPAREFORFIGHT(16, 0, 8, 0, "PARTM3_FIGHTCLUB_RECRUIT2");
}

func void RTN_INSTRUCTOR_4040() {
    TA_RUNTOWP(8, 0, 16, 0, "PART3_RECRUIT_01");
    TA_RUNTOWP(16, 0, 8, 0, "PART3_RECRUIT_01");
}

func void RTN_RUN_4040() {
    TA_RUNTOWP(7, 0, 22, 0, "PART3_PATH_10");
    TA_RUNTOWP(22, 0, 7, 0, "PART3_PATH_10");
}

func void RTN_WAITRUN_4040() {
    TA_IDLE(8, 0, 16, 0, "PART3_TARGET_RECRUIT_01");
    TA_IDLE(16, 0, 8, 0, "PART3_TARGET_RECRUIT_01");
}

func void RTN_SHOOT_4040() {
    TA_CROSSBOWTRAINING(8, 0, 16, 0, "PART3_TARGET_SHOT_01");
    TA_CROSSBOWTRAINING(16, 0, 8, 0, "PART3_TARGET_SHOT_01");
}

func void RTN_AFTERSHOOT_4040() {
    TA_IDLE(8, 0, 16, 0, "PART3_TARGET_RACE_01");
    TA_IDLE(16, 0, 8, 0, "PART3_TARGET_RACE_01");
}

func void RTN_RACE_4040() {
    TA_RUNTOWP(8, 0, 16, 0, "PART2_BRIDGE_PATH_02");
    TA_RUNTOWP(16, 0, 8, 0, "PART2_BRIDGE_PATH_02");
}

func void RTN_AFTERRACE_4040() {
    TA_BREATH(8, 0, 16, 0, "PART2_RECRUIT_AFTERRACE_01");
    TA_BREATH(16, 0, 8, 0, "PART2_RECRUIT_AFTERRACE_01");
}

func void RTN_TOT_4040() {
    TA_STAND_ARMSCROSSED(8, 0, 16, 0, TOT);
    TA_STAND_ARMSCROSSED(16, 0, 8, 0, TOT);
}

instance MIL_4040_RECRUIT_V2(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_RECRUIT;
    GUILD = GIL_MIL;
    ID = 40400;
    VOICE = 3;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_4040_RECRUIT_V2, 20);
    EQUIPITEM(MIL_4040_RECRUIT_V2, 34021);
    EQUIPITEM(MIL_4040_RECRUIT_V2, 34385);
    CREATEINVITEMS(MIL_4040_RECRUIT_V2, 34384, 10);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_4040_RECRUIT_V2, MALE, HUMHEADPONY, FACE_N_RECRUIT01, 1, 35485);
    MDL_APPLYOVERLAYMDS(MIL_4040_RECRUIT_V2, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(MIL_4040_RECRUIT_V2);
    B_SETFIGHTSKILLS(MIL_4040_RECRUIT_V2, 35);
    DAILY_ROUTINE = RTN_START_40400;
}

func void RTN_START_40400() {
    TA_SWORDTRAINING(8, 0, 16, 0, "PARTM3_TRAINING_01");
    TA_SWORDTRAINING(16, 0, 8, 0, "PARTM3_TRAINING_01");
}

func void RTN_JOININGMILITIA_40400() {
    TA_MILSTAND(8, 0, 16, 0, "PARTM3_JOININGMILITIA_01");
    TA_MILSTAND(16, 0, 8, 0, "PARTM3_JOININGMILITIA_01");
}

func void RTN_JOININGMILITIA_TAVERN_40400() {
    TA_SMALLTALK(8, 0, 16, 0, "PARTM4_TAVERN_SMALLTALK_02");
    TA_SMALLTALK(16, 0, 8, 0, "PARTM4_TAVERN_SMALLTALK_02");
}

func void RTN_TOT_40400() {
    TA_STAND_ARMSCROSSED(8, 0, 16, 0, TOT);
    TA_STAND_ARMSCROSSED(16, 0, 8, 0, TOT);
}

instance MIL_4040_CABI(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_CABI;
    GUILD = GIL_MIL;
    ID = 404000;
    VOICE = 3;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_4040_CABI, 30);
    EQUIPITEM(MIL_4040_CABI, 34021);
    EQUIPITEM(MIL_4040_CABI, 34385);
    CREATEINVITEMS(MIL_4040_CABI, 34384, 10);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_4040_CABI, MALE, HUMHEADPONY, FACE_N_RECRUIT01, 1, 35488);
    MDL_APPLYOVERLAYMDS(MIL_4040_CABI, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(MIL_4040_CABI);
    B_SETFIGHTSKILLS(MIL_4040_CABI, 35);
    DAILY_ROUTINE = RTN_START_404000;
}

func void RTN_START_404000() {
    TA_SWORDTRAINING(7, 0, 22, 0, "PARTM3_TRAINING_01");
    TA_SLEEP(22, 0, 7, 0, "PARTM3_BARRACK_HOUSE3_BED_03");
}

func void RTN_SQ311_WAIT_404000() {
    TA_LEAN(8, 0, 16, 0, "PARTM3_LEAN_03");
    TA_LEAN(16, 0, 8, 0, "PARTM3_LEAN_03");
}

func void RTN_SQ311_WAIT_MINE_404000() {
    TA_STAND_ARMSCROSSED(8, 0, 16, 0, "PART10_SQ311_GUARD_01");
    TA_STAND_ARMSCROSSED(16, 0, 8, 0, "PART10_SQ311_GUARD_01");
}

func void RTN_SQ311_FOLLOW_404000() {
    TA_FOLLOW_PLAYER(8, 0, 16, 0, "PART10_SQ311_GUARD_01");
    TA_FOLLOW_PLAYER(16, 0, 8, 0, "PART10_SQ311_GUARD_01");
}

func void RTN_KQ402_LAUGH_404000() {
    TA_LAUGH(8, 0, 16, 0, "PARTM3_KQ402_MILITIA_LAUGH_01");
    TA_LAUGH(16, 0, 8, 0, "PARTM3_KQ402_MILITIA_LAUGH_01");
}

func void RTN_TOT_404000() {
    TA_STAND_ARMSCROSSED(8, 0, 16, 0, TOT);
    TA_STAND_ARMSCROSSED(16, 0, 8, 0, TOT);
}

func void RTN_SQ311_INVESTIGATION_404000() {
    TA_SMALLTALK(8, 0, 16, 0, "PART10_MINE_SMALLTALK_01");
    TA_SMALLTALK(16, 0, 8, 0, "PART10_MINE_SMALLTALK_01");
}

