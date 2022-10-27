instance VLK_6067_GIRL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 0x17b3;
    VOICE = 34;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6067_GIRL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6067_GIRL, FEMALE, HUMHEADBABE5, FACE_WN_CITIZEN38, 5, 0x8b16);
    MDL_APPLYOVERLAYMDS(VLK_6067_GIRL, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6067_GIRL);
    B_GIVENPCTALENTS(VLK_6067_GIRL);
    B_SETFIGHTSKILLS(VLK_6067_GIRL, 30);
    DAILY_ROUTINE = RTN_START_6067;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6067() {
    TA_SMALLTALK(6, 30, 9, 30, "PARTM3_SMALLTALK_03");
    TA_STAND_DRINKING(9, 30, 11, 0, "HARBOUR_PATH_328");
    TA_SMALLTALK(11, 0, 15, 0, "PARTM3_SMALLTALK_03");
    TA_STAND_DRINKING(15, 0, 18, 0, "HARBOUR_TAVERN_97");
    TA_DANCE(18, 0, 22, 0, "HARBOUR_TAVERN_DANCE");
    TA_SLEEP(22, 0, 6, 30, "PARTM1_HOUSE01_BED_01");
}

func void RTN_Q206_FINBARBODY_6067() {
    TA_STAND_DRINKING(9, 30, 11, 0, TOT2);
    TA_STAND_DRINKING(11, 0, 9, 30, TOT2);
}

