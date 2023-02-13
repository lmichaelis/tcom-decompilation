instance VLK_6033_GIRL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 6033;
    VOICE = 31;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6033_GIRL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6033_GIRL, FEMALE, HUMHEADBABE, FACE_WL_CITIZEN74, 6, 35602);
    MDL_APPLYOVERLAYMDS(VLK_6033_GIRL, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6033_GIRL);
    B_GIVENPCTALENTS(VLK_6033_GIRL);
    B_SETFIGHTSKILLS(VLK_6033_GIRL, 30);
    DAILY_ROUTINE = RTN_START_6033;
    AIVAR[74] = NPC_CITY_IMFROMSLUMS;
    AIVAR[70] = NPC_AMB_CITY_SLUMS;
}

func void RTN_START_6033() {
    TA_STOMP_HERB(7, 0, 20, 0, "SLUMS_HERB_04");
    TA_SLEEP(20, 0, 7, 0, "SLUMS_HOUSE20_07");
}

