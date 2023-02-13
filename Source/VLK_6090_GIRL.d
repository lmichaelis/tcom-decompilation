instance VLK_6090_GIRL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 6090;
    VOICE = 69;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6090_GIRL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6090_GIRL, FEMALE, HUMHEADBABE4, FACE_WN_CITIZEN58, 5, 35603);
    MDL_APPLYOVERLAYMDS(VLK_6090_GIRL, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6090_GIRL);
    B_GIVENPCTALENTS(VLK_6090_GIRL);
    B_SETFIGHTSKILLS(VLK_6090_GIRL, 30);
    DAILY_ROUTINE = RTN_START_6090;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6090() {
    TA_SMALLTALK(8, 0, 10, 0, "HARBOUR_PATH_92");
    TA_PLUNDER(10, 0, 12, 0, "HARBOUR_HOUSE10_08");
    TA_COOK_STOVE(12, 0, 16, 0, "HARBOUR_HOUSE10_10");
    TA_STAND_SWEEPING(16, 0, 19, 30, "HARBOUR_PATH_98");
    TA_SIT_CHAIR_EAT(19, 30, 22, 0, "HARBOUR_HOUSE10_03");
    TA_SLEEP(22, 0, 8, 0, "HARBOUR_HOUSE10_BED01");
}
