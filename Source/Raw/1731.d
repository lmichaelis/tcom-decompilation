instance VLK_6013_GIRL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 0x177d;
    VOICE = 16;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6013_GIRL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6013_GIRL, FEMALE, HUMHEADBABE4, FACE_WN_CITIZEN31, 5, 0x8b11);
    MDL_APPLYOVERLAYMDS(VLK_6013_GIRL, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6013_GIRL);
    B_GIVENPCTALENTS(VLK_6013_GIRL);
    B_SETFIGHTSKILLS(VLK_6013_GIRL, 30);
    DAILY_ROUTINE = RTN_START_6013;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6013() {
    TA_STAND_ARMSCROSSED(5, 30, 6, 30, "PARTM4_MUSEUM_STAND_04");
    TA_STOMP_HERB(6, 30, 12, 0, "HARBOUR_HERB_03");
    TA_STAND_DRINKING(12, 0, 13, 30, "HARBOUR_PATH_328");
    TA_STOMP_HERB(13, 30, 19, 30, "HARBOUR_HERB_03");
    TA_SLEEP(19, 30, 5, 30, "SLUMS_HOUSE06_09");
}

func void RTN_Q206_FINBARBODY_6013() {
    TA_STOMP_HERB(6, 30, 22, 0, "HARBOUR_HERB_03");
    TA_STOMP_HERB(22, 0, 6, 30, TOT2);
}

