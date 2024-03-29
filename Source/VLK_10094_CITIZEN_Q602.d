instance VLK_10094_CITIZEN_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_FRIENDLY_HUMAN;
    ID = 50192;
    VOICE = 33;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(VLK_10094_CITIZEN_Q602, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_10094_CITIZEN_Q602, FEMALE, HUMHEADBABEHAIR, FACE_WB_CITIZEN95, 7, 33911);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_10094_CITIZEN_Q602);
    B_GIVENPCTALENTS(VLK_10094_CITIZEN_Q602);
    B_SETFIGHTSKILLS(VLK_10094_CITIZEN_Q602, 45);
    MDL_APPLYOVERLAYMDS(VLK_10094_CITIZEN_Q602, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(VLK_10094_CITIZEN_Q602, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(VLK_10094_CITIZEN_Q602, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(VLK_10094_CITIZEN_Q602, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_50192;
}

func void RTN_START_50192() {
    TA_SIT_DEPRESSION_NOIQ(8, 0, 18, 0, "PARTE4_WOMAN_01");
    TA_SIT_DEPRESSION_NOIQ(18, 0, 8, 0, "PARTE4_WOMAN_01");
}

func void RTN_Q602_AFTERFIGHT_50192() {
    TA_SEARCH_ONLY(8, 0, 18, 0, "PARTE4_WOMAN_01");
    TA_SEARCH_ONLY(18, 0, 8, 0, "PARTE4_WOMAN_01");
}

func void RTN_Q602_BARRACK_50192() {
    TA_SIT_CAMPFIRE_Q602(8, 0, 18, 0, "PARTM3_BARRACK_HOUSE1_05");
    TA_SIT_CAMPFIRE_Q602(18, 0, 8, 0, "PARTM3_BARRACK_HOUSE1_05");
}

