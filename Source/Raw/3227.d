instance VLK_10080_CITIZEN_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 0xc40d;
    VOICE = 16;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(VLK_10080_CITIZEN_Q602, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_10080_CITIZEN_Q602, FEMALE, HUMHEADBABEHAIR, FACE_WN_CITIZEN92, 5, 0x846d);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_10080_CITIZEN_Q602);
    B_GIVENPCTALENTS(VLK_10080_CITIZEN_Q602);
    B_SETFIGHTSKILLS(VLK_10080_CITIZEN_Q602, 45);
    MDL_APPLYOVERLAYMDS(VLK_10080_CITIZEN_Q602, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(VLK_10080_CITIZEN_Q602, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(VLK_10080_CITIZEN_Q602, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(VLK_10080_CITIZEN_Q602, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_50189;
}

func void RTN_START_50189() {
    TA_PRAY_NOIQ(8, 0, 18, 0, "PARTM8_PATH_PRAY");
    TA_PRAY_NOIQ(18, 0, 8, 0, "PARTM8_PATH_PRAY");
}

func void RTN_Q602_STANDUP_50189() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 18, 0, "PARTM8_PATH_PRAY");
    TA_STAYSTRAIGHT_NOIQ(18, 0, 8, 0, "PARTM8_PATH_PRAY");
}

func void RTN_Q602_FOLLOW_50189() {
    TA_RUNTOWP_Q602(8, 0, 18, 0, "PARTE1_CITIZENRUN_06");
    TA_RUNTOWP_Q602(18, 0, 8, 0, "PARTE1_CITIZENRUN_06");
}

func void RTN_Q602_WAIT_E1_50189() {
    TA_BREATH_NOIQ(8, 0, 10, 0, "PARTE1_CITIZENRUN_06");
    TA_BREATH_NOIQ(10, 0, 8, 0, "PARTE1_CITIZENRUN_06");
}

func void RTN_Q602_WAIT_50189() {
    TA_SIT_DEPRESSION_Q602(8, 0, 23, 0, "PARTE1_CITIZEN_01");
    TA_SIT_DEPRESSION_Q602(23, 0, 8, 0, "PARTE1_CITIZEN_01");
}

func void RTN_Q602_BARRACK_WAIT_50189() {
    TA_SIT_DEPRESSION_Q602(8, 0, 18, 0, "PARTM3_PATH_172");
    TA_SIT_DEPRESSION_Q602(18, 0, 8, 0, "PARTM3_PATH_172");
}

func void RTN_Q602_BARRACK_50189() {
    TA_SIT_DEPRESSION_Q602(8, 0, 18, 0, "PARTM3_BARRACK_HOUSE1_04");
    TA_SIT_DEPRESSION_Q602(18, 0, 8, 0, "PARTM3_BARRACK_HOUSE1_04");
}

