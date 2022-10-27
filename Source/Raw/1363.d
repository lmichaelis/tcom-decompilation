instance MIL_4042_RECRUIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_RECRUIT;
    GUILD = GIL_MIL;
    ID = 0xfca;
    VOICE = 37;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_4042_RECRUIT, 10);
    EQUIPITEM(MIL_4042_RECRUIT, 0x9a52);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_CREATEAMBIENTINV(MIL_4042_RECRUIT);
    B_SETNPCVISUAL(MIL_4042_RECRUIT, MALE, HUMHEADTHIEF, FACE_N_RECRUIT03, 1, 0x8a63);
    MDL_APPLYOVERLAYMDS(MIL_4042_RECRUIT, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(MIL_4042_RECRUIT);
    B_SETFIGHTSKILLS(MIL_4042_RECRUIT, 30);
    DAILY_ROUTINE = RTN_START_4042;
}

func void RTN_START_4042() {
    TA_PLUNDER(7, 0, 11, 0, "PARTM3_PLUNDER_01");
    TA_MILSTAND(11, 0, 16, 0, "PARTM3_RECRUIT_01");
    TA_PLUNDER(16, 0, 7, 0, "PARTM3_PLUNDER_01");
}

func void RTN_MEETING_4042() {
    TA_MILSTAND(11, 0, 16, 0, "PARTM3_RECRUIT_01");
    TA_MILSTAND(16, 0, 11, 0, "PARTM3_RECRUIT_01");
}

func void RTN_FIGHTCLUB_4042() {
    TA_PREPAREFORFIGHT(8, 0, 16, 0, "PARTM3_FIGHTCLUB_RECRUIT3");
    TA_PREPAREFORFIGHT(16, 0, 8, 0, "PARTM3_FIGHTCLUB_RECRUIT3");
}

func void RTN_SECONDFIGHT_4043() {
    TA_PREPAREFORFIGHT(8, 0, 16, 0, "PARTM3_FIGHTCLUB_RECRUIT3");
    TA_PREPAREFORFIGHT(16, 0, 8, 0, "PARTM3_FIGHTCLUB_RECRUIT3");
}

func void RTN_INSTRUCTOR_4042() {
    TA_RUNTOWP(8, 0, 16, 0, "PART3_RECRUIT_03");
    TA_RUNTOWP(16, 0, 8, 0, "PART3_RECRUIT_03");
}

func void RTN_RUN_4042() {
    TA_RUNTOWP(7, 0, 22, 0, "PART3_PATH_10");
    TA_RUNTOWP(22, 0, 7, 0, "PART3_PATH_10");
}

func void RTN_WAITRUN_4042() {
    TA_IDLE(8, 0, 16, 0, "PART3_TARGET_RECRUIT_03");
    TA_IDLE(16, 0, 8, 0, "PART3_TARGET_RECRUIT_03");
}

func void RTN_SHOOT_4042() {
    TA_CROSSBOWTRAINING(8, 0, 16, 0, "PART3_TARGET_SHOT_03");
    TA_CROSSBOWTRAINING(16, 0, 8, 0, "PART3_TARGET_SHOT_03");
}

func void RTN_AFTERSHOOT_4042() {
    TA_IDLE(8, 0, 16, 0, "PART3_TARGET_RACE_03");
    TA_IDLE(16, 0, 8, 0, "PART3_TARGET_RACE_03");
}

func void RTN_RACE_4042() {
    TA_RUNTOWP(8, 0, 16, 0, "PART2_BRIDGE_PATH_02");
    TA_RUNTOWP(16, 0, 8, 0, "PART2_BRIDGE_PATH_02");
}

func void RTN_AFTERRACE_4042() {
    TA_BREATH(8, 0, 16, 0, "PART2_RECRUIT_AFTERRACE_01");
    TA_BREATH(16, 0, 8, 0, "PART2_RECRUIT_AFTERRACE_01");
}

func void RTN_TOT_4042() {
    TA_STAND_ARMSCROSSED(8, 0, 16, 0, TOT);
    TA_STAND_ARMSCROSSED(16, 0, 8, 0, TOT);
}

instance MIL_4042_RECRUIT_V2(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_RECRUIT;
    GUILD = GIL_MIL;
    ID = 0x9de4;
    VOICE = 37;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_4042_RECRUIT_V2, 20);
    EQUIPITEM(MIL_4042_RECRUIT_V2, 0x84e5);
    EQUIPITEM(MIL_4042_RECRUIT_V2, 0x8651);
    CREATEINVITEMS(MIL_4042_RECRUIT_V2, 0x8650, 10);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_4042_RECRUIT_V2, MALE, HUMHEADTHIEF, FACE_N_RECRUIT03, 1, 0x8a9d);
    MDL_APPLYOVERLAYMDS(MIL_4042_RECRUIT_V2, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(MIL_4042_RECRUIT_V2);
    B_SETFIGHTSKILLS(MIL_4042_RECRUIT_V2, 30);
    DAILY_ROUTINE = RTN_START_40420;
}

func void RTN_START_40420() {
    TA_SWORDTRAINING(8, 0, 16, 0, "PARTM3_TRAINING_03");
    TA_SWORDTRAINING(16, 0, 8, 0, "PARTM3_TRAINING_03");
}

func void RTN_JOININGMILITIA_40420() {
    TA_MILSTAND(8, 0, 16, 0, "PARTM3_JOININGMILITIA_04");
    TA_MILSTAND(16, 0, 8, 0, "PARTM3_JOININGMILITIA_04");
}

func void RTN_JOININGMILITIA_TAVERN_40420() {
    TA_SMALLTALK(8, 0, 16, 0, "PARTM4_TAVERN_SMALLTALK_01");
    TA_SMALLTALK(16, 0, 8, 0, "PARTM4_TAVERN_SMALLTALK_01");
}

func void RTN_TOT_40420() {
    TA_STAND_ARMSCROSSED(8, 0, 16, 0, TOT);
    TA_STAND_ARMSCROSSED(16, 0, 8, 0, TOT);
}

instance MIL_4042_NEIR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_NEIR;
    GUILD = GIL_MIL;
    ID = 0x62ae8;
    VOICE = 37;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_4042_NEIR, 30);
    EQUIPITEM(MIL_4042_NEIR, 0x84e5);
    EQUIPITEM(MIL_4042_NEIR, 0x8651);
    CREATEINVITEMS(MIL_4042_NEIR, 0x8650, 10);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_4042_NEIR, MALE, HUMHEADTHIEF, FACE_N_RECRUIT03, 1, 0x8aa0);
    MDL_APPLYOVERLAYMDS(MIL_4042_NEIR, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(MIL_4042_NEIR);
    B_SETFIGHTSKILLS(MIL_4042_NEIR, 30);
    DAILY_ROUTINE = RTN_START_40420;
}

func void RTN_START_404200() {
    TA_SWORDTRAINING(7, 0, 22, 0, "PARTM3_TRAINING_03");
    TA_SLEEP(22, 0, 7, 0, "PARTM3_BARRACK_HOUSE1_BED07");
}

func void RTN_SQ311_WAIT_404200() {
    TA_STAYSTRAIGHT(8, 0, 16, 0, "PARTM3_PATH_143");
    TA_STAYSTRAIGHT(16, 0, 8, 0, "PARTM3_PATH_143");
}

func void RTN_SQ311_WAIT_MINE_404200() {
    TA_STAND_ARMSCROSSED(8, 0, 16, 0, "PART10_SQ311_GUARD_02");
    TA_STAND_ARMSCROSSED(16, 0, 8, 0, "PART10_SQ311_GUARD_02");
}

func void RTN_SQ311_FOLLOW_404200() {
    TA_FOLLOW_PLAYER(8, 0, 16, 0, "PART10_SQ311_GUARD_02");
    TA_FOLLOW_PLAYER(16, 0, 8, 0, "PART10_SQ311_GUARD_02");
}

func void RTN_TOT_404200() {
    TA_STAND_ARMSCROSSED(8, 0, 16, 0, TOT);
    TA_STAND_ARMSCROSSED(16, 0, 8, 0, TOT);
}

func void RTN_SQ311_INVESTIGATION_404200() {
    TA_SMALLTALK(8, 0, 16, 0, "PART10_MINE_SMALLTALK_05");
    TA_SMALLTALK(16, 0, 8, 0, "PART10_MINE_SMALLTALK_05");
}
