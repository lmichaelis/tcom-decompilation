instance VLK_10079_CITIZEN_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 50188;
    VOICE = 16;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(VLK_10079_CITIZEN_Q602, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_10079_CITIZEN_Q602, FEMALE, HUMHEADBABE7, FACE_WB_CITIZEN91, 7, 33902);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_10079_CITIZEN_Q602);
    B_GIVENPCTALENTS(VLK_10079_CITIZEN_Q602);
    B_SETFIGHTSKILLS(VLK_10079_CITIZEN_Q602, 45);
    MDL_APPLYOVERLAYMDS(VLK_10079_CITIZEN_Q602, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(VLK_10079_CITIZEN_Q602, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(VLK_10079_CITIZEN_Q602, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(VLK_10079_CITIZEN_Q602, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_50188;
}

func void RTN_START_50188() {
    TA_PRAY_NOIQ(8, 0, 18, 0, "PARTE8_PRAY_03");
    TA_PRAY_NOIQ(18, 0, 8, 0, "PARTE8_PRAY_03");
}

func void RTN_Q602_STANDUP_50188() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 18, 0, "PARTE8_PRAY_03");
    TA_STAYSTRAIGHT_NOIQ(18, 0, 8, 0, "PARTE8_PRAY_03");
}

func void RTN_Q602_FOLLOW_50188() {
    TA_RUNTOWP_Q602(8, 0, 18, 0, "PARTE1_CITIZENRUN_05");
    TA_RUNTOWP_Q602(18, 0, 8, 0, "PARTE1_CITIZENRUN_05");
}

func void RTN_Q602_WAIT_E1_50188() {
    TA_SEARCH_SCARED_Q602(8, 0, 10, 0, "PARTE1_CITIZENRUN_05");
    TA_SEARCH_SCARED_Q602(10, 0, 8, 0, "PARTE1_CITIZENRUN_05");
}

func void RTN_Q602_WAIT_50188() {
    TA_SEARCH_SCARED_Q602(8, 0, 23, 0, "PARTE1_CITIZEN_02");
    TA_SEARCH_SCARED_Q602(23, 0, 8, 0, "PARTE1_CITIZEN_02");
}

func void RTN_Q602_BARRACK_WAIT_50188() {
    TA_SEARCH_SCARED_Q602(8, 0, 18, 0, "PARTM3_PATH_11");
    TA_SEARCH_SCARED_Q602(18, 0, 8, 0, "PARTM3_PATH_11");
}

func void RTN_Q602_BARRACK_50188() {
    TA_SLEEP_NOIQ(8, 0, 18, 0, "PARTM3_BARRACK_HOUSE1_BED_01");
    TA_SLEEP_NOIQ(18, 0, 8, 0, "PARTM3_BARRACK_HOUSE1_BED_01");
}

