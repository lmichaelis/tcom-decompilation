instance VLK_14109_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 14109;
    VOICE = 33;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_14109_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_14109_CITIZEN, FEMALE, HUMHEADBABE4, FACE_WN_CITIZEN133, 5, 35613);
    MDL_APPLYOVERLAYMDS(VLK_14109_CITIZEN, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_14109_CITIZEN);
    B_GIVENPCTALENTS(VLK_14109_CITIZEN);
    B_SETFIGHTSKILLS(VLK_14109_CITIZEN, 30);
    DAILY_ROUTINE = RTN_START_14109;
    AIVAR[74] = NPC_CITY_IAMFROMOLDCITY;
    AIVAR[70] = NPC_AMB_CITY_OLDCITY;
}

func void RTN_START_14109() {
    TA_SMALLTALK(7, 0, 23, 0, "PARTM5_ERNESTO_SMALLTALK_02");
    TA_SLEEP(23, 0, 7, 0, "PARTM5_HOUSE_KLAUDIOS_SLEEP_06");
}

func void RTN_TOT_14109() {
    TA_STAND_GUARDING2(8, 13, 9, 13, TOT);
    TA_STAND_GUARDING2(9, 13, 8, 13, TOT);
}

