instance MIL_4000_RODERICH(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_RODERICH;
    GUILD = GIL_MIL;
    ID = 4000;
    VOICE = 41;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_4000_RODERICH, 60);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    EQUIPITEM(MIL_4000_RODERICH, 39559);
    B_SETNPCVISUAL(MIL_4000_RODERICH, MALE, HUMHEADFIGHTER, FACE_L_RODERICH, 2, 35506);
    MDL_APPLYOVERLAYMDS(MIL_4000_RODERICH, HUMANSLEADERMDS);
    B_GIVENPCTALENTS(MIL_4000_RODERICH);
    B_SETFIGHTSKILLS(MIL_4000_RODERICH, 60);
    DAILY_ROUTINE = RTN_START_4000;
}

func void RTN_START_4000() {
    TA_SIT_CHAIR_EAT(6, 0, 7, 0, "PARTM3_RODERICH_CHAIR_02");
    TA_SIT_THRONE(7, 0, 10, 0, "PARTM3_RODERICH_THRONE");
    TA_READ_BOOKSTAND(10, 0, 15, 0, "PARTM3_RODERICH_BOOKSTAND");
    TA_SIT_THRONE(15, 0, 17, 30, "PARTM3_RODERICH_THRONE");
    TA_SIT_THRONE(17, 30, 18, 30, "PARTM3_RODERICH_THRONE");
    TA_SIT_CHAIR_EAT(18, 30, 20, 30, "PARTM3_RODERICH_CHAIR_03");
    TA_SIT_THRONE(20, 30, 22, 0, "PARTM3_RODERICH_THRONE_03");
    TA_SLEEP(22, 0, 6, 0, "PARTM3_RODERICH_BED");
}

func void RTN_FMQ003_RODERICHWAIT_4000() {
    TA_READ_BOOKSTAND(7, 0, 22, 0, "PARTM3_RODERICH_BOOKSTAND");
    TA_SLEEP(22, 0, 7, 0, "PARTM3_RODERICH_BED");
}

func void RTN_CQ005_SMALLTALK_4000() {
    TA_SMALLTALK(7, 0, 22, 0, "PARTM3_RODERICH_17");
    TA_SMALLTALK(22, 0, 7, 0, "PARTM3_RODERICH_17");
}

func void RTN_SPEACH_4000() {
    TA_STAND_LEADER(19, 30, 20, 30, "PARTM3_RODERICH_LOOKOUT");
    TA_STAND_LEADER(20, 30, 19, 30, "PARTM3_RODERICH_LOOKOUT");
}

func void RTN_CQ004_BARRACKJUDGMENT_4000() {
    TA_SIT_THRONE_READING(8, 0, 22, 0, "PARTM3_RODERICH_THRONE_03");
    TA_SLEEP(22, 0, 8, 0, "PARTM3_RODERICH_BED");
}

func void RTN_JOININGMILITIA_TAVERN_4000() {
    TA_STAND_DRINKING(8, 0, 16, 0, "PARTM4_TAVERN_19");
    TA_STAND_DRINKING(16, 0, 8, 0, "PARTM4_TAVERN_19");
}

func void RTN_Q308_4000() {
    TA_SIT_THRONE(7, 0, 22, 0, "PARTM5_CITYHALL_THRONE_02");
    TA_SIT_THRONE(22, 0, 7, 0, "PARTM5_CITYHALL_THRONE_02");
}

func void RTN_Q308_WAITOLDTOWN_4000() {
    TA_STAYSTRAIGHT_NOIQ(7, 0, 22, 0, "PARTM5_PATH_106");
    TA_STAYSTRAIGHT_NOIQ(22, 0, 7, 0, "PARTM5_PATH_106");
}

func void RTN_TOWNHALL_4000() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PARTM5_ANGRYMOB_RODERICH");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PARTM5_ANGRYMOB_RODERICH");
}

func void RTN_KQ402_BARRACK_4000() {
    TA_GUIDE_PLAYER(8, 0, 22, 0, "PARTM3_KQ402_RODERICH");
    TA_GUIDE_PLAYER(22, 0, 8, 0, "PARTM3_KQ402_RODERICH");
}

func void RTN_KQ402_OBSERVE_4000() {
    TA_OBSERVE(8, 0, 22, 0, "PARTM3_RODERICH_BOOKSTAND");
    TA_OBSERVE(22, 0, 8, 0, "PARTM3_RODERICH_BOOKSTAND");
}

func void RTN_KQ402_FINAL_4000() {
    TA_STAYSTRAIGHT(7, 0, 21, 0, "PARTM3_KQ402_RODERICH_02");
    TA_STAYSTRAIGHT(21, 0, 7, 0, "PARTM3_KQ402_RODERICH_02");
}

func void RTN_LORENZOISGONE_4000() {
    TA_LORENZOISGONE(8, 0, 22, 0, "XXX");
    TA_LORENZOISGONE(22, 0, 8, 0, "XXX");
}

