instance VLK_6030_GIRL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_FEMALEBEGGAR;
    GUILD = GIL_VLK;
    ID = 6030;
    VOICE = 33;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6030_GIRL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6030_GIRL, FEMALE, HUMHEADBABEHAIR1, FACE_WL_BEGGAR, 6, 35608);
    MDL_APPLYOVERLAYMDS(VLK_6030_GIRL, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6030_GIRL);
    B_GIVENPCTALENTS(VLK_6030_GIRL);
    B_SETFIGHTSKILLS(VLK_6030_GIRL, 30);
    DAILY_ROUTINE = RTN_START_6030;
    AIVAR[74] = NPC_CITY_IMFROMSLUMS;
    AIVAR[70] = NPC_AMB_CITY_SLUMS;
}

func void RTN_START_6030() {
    TA_STOMP_HERB(8, 0, 22, 0, "SLUMS_HERB_01");
    TA_SLEEP(22, 0, 8, 0, "SLUMS_HOUSE02_07");
}

