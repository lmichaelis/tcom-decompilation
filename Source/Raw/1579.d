instance NONE_11068_GRAYSON(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_GRAYSON;
    GUILD = GIL_NONE;
    ID = 0x2b3c;
    VOICE = 29;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_11068_GRAYSON, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_11068_GRAYSON, MALE, HUMHEADWITHOUTPONY, FACE_N_GRAYSON, 1, 0x8ad3);
    MDL_APPLYOVERLAYMDS(NONE_11068_GRAYSON, HUMANSLEADERMDS);
    B_CREATEAMBIENTINV(NONE_11068_GRAYSON);
    EQUIPITEM(NONE_11068_GRAYSON, 0x9a7a);
    B_GIVENPCTALENTS(NONE_11068_GRAYSON);
    B_SETFIGHTSKILLS(NONE_11068_GRAYSON, 45);
    DAILY_ROUTINE = RTN_START_11068;
    AIVAR[74] = NPC_CITY_IAMFROMOLDCITY;
}

func void RTN_START_11068() {
    TA_STAND_LEADER(8, 0, 22, 0, "PARTM5_CITYHALL_43");
    TA_SIT_THRONE(22, 0, 8, 0, "PARTM5_CITYHALL_THRONE_04");
}

func void RTN_KQ406_SMALLTALK_11068() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PARTM5_CITYHALL_KQ407_SMALLTALK_02");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PARTM5_CITYHALL_KQ407_SMALLTALK_02");
}

func void RTN_KQ407_KALEB_11068() {
    TA_STAND_LEADER(8, 0, 22, 0, "HARBOUR_HOUSE01_19");
    TA_STAND_LEADER(22, 0, 8, 0, "HARBOUR_HOUSE01_19");
}

func void RTN_KQ407_SMALLTALK_11068() {
    TA_SMALLTALK(8, 0, 22, 0, "PARTM5_CITYHALL_KQ407_SMALLTALK_02");
    TA_SMALLTALK(22, 0, 8, 0, "PARTM5_CITYHALL_KQ407_SMALLTALK_02");
}

