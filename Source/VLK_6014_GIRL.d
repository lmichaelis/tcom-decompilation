instance VLK_6014_GIRL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 6014;
    VOICE = 69;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6014_GIRL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6014_GIRL, FEMALE, HUMHEADBABEHAIR, FACE_WN_CITIZEN32, 5, 35607);
    MDL_APPLYOVERLAYMDS(VLK_6014_GIRL, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6014_GIRL);
    B_GIVENPCTALENTS(VLK_6014_GIRL);
    B_SETFIGHTSKILLS(VLK_6014_GIRL, 30);
    DAILY_ROUTINE = RTN_START_6014;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6014() {
    TA_STAND_EATING(5, 30, 7, 0, "PARTM4_STAND_03");
    TA_STOMP_HERB(7, 0, 12, 0, "HARBOUR_HERB_04");
    TA_STAND_DRINKING(12, 0, 13, 30, "HARBOUR_PATH_122");
    TA_STOMP_HERB(13, 30, 18, 30, "HARBOUR_HERB_04");
    TA_SMALLTALK(18, 30, 21, 30, "HARBOUR_SMALLTALK_06");
    TA_SLEEP(21, 30, 5, 30, "SLUMS_HOUSE05_08");
}

func void RTN_Q206_FINBARBODY_6014() {
    TA_STAND_EATING(7, 0, 22, 0, "PARTM4_STAND_03");
    TA_STAND_EATING(22, 0, 7, 0, TOT2);
}

func void RTN_KQ404_CONCERT_6014() {
    TA_STAND_EATING(5, 30, 7, 0, "PARTM4_STAND_03");
    TA_STOMP_HERB(7, 0, 12, 0, "HARBOUR_HERB_04");
    TA_STAND_DRINKING(12, 0, 13, 30, "HARBOUR_PATH_122");
    TA_STOMP_HERB(13, 30, 18, 0, "HARBOUR_HERB_04");
    TA_CONCERT_WATCH(18, 0, 21, 0, "KQ404_VIEWER_05");
    TA_SLEEP(21, 0, 5, 30, "SLUMS_HOUSE05_08");
}

