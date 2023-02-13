instance VLK_10093_CITIZEN_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_FRIENDLY_HUMAN;
    ID = 50191;
    VOICE = 33;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(VLK_10093_CITIZEN_Q602, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_10093_CITIZEN_Q602, FEMALE, HUMHEADBABEHAIR, FACE_WN_CITIZEN94, 5, 33900);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_10093_CITIZEN_Q602);
    B_GIVENPCTALENTS(VLK_10093_CITIZEN_Q602);
    B_SETFIGHTSKILLS(VLK_10093_CITIZEN_Q602, 45);
    MDL_APPLYOVERLAYMDS(VLK_10093_CITIZEN_Q602, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(VLK_10093_CITIZEN_Q602, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(VLK_10093_CITIZEN_Q602, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(VLK_10093_CITIZEN_Q602, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_50191;
}

func void RTN_START_50191() {
    TA_SIT_DEPRESSION_NOIQ(8, 0, 18, 0, "PARTE4_WOMAN_02");
    TA_SIT_DEPRESSION_NOIQ(18, 0, 8, 0, "PARTE4_WOMAN_02");
}

func void RTN_Q602_AFTERFIGHT_50191() {
    TA_BREATH(8, 0, 18, 0, "PARTE4_WOMAN_02");
    TA_BREATH(18, 0, 8, 0, "PARTE4_WOMAN_02");
}

func void RTN_Q602_BARRACK_50191() {
    TA_SEARCH_SCARED(8, 0, 18, 0, "PARTM3_BARRACK_HOUSE1_15");
    TA_SEARCH_SCARED(18, 0, 8, 0, "PARTM3_BARRACK_HOUSE1_15");
}

