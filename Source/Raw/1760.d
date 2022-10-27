instance VLK_6097_GIRL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 0x17d1;
    VOICE = 34;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6097_GIRL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6097_GIRL, FEMALE, HUMHEADBABE3, FACE_WN_CITIZEN64, 5, 0x8b17);
    MDL_APPLYOVERLAYMDS(VLK_6097_GIRL, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6097_GIRL);
    B_GIVENPCTALENTS(VLK_6097_GIRL);
    B_SETFIGHTSKILLS(VLK_6097_GIRL, 30);
    DAILY_ROUTINE = RTN_START_6097;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6097() {
    TA_PRAY_INNOS_FP(7, 30, 10, 30, "HARBOUR_TEMPLE_01");
    TA_COOK_STOVE(10, 30, 14, 0, "PARTM1_HOTEL_STOVE_01");
    TA_STAND_EATING(14, 0, 16, 0, "HARBOUR_STAND_04");
    TA_COOK_STOVE(16, 0, 18, 0, "PARTM1_HOTEL_STOVE_01");
    TA_SIT_THRONE(18, 0, 21, 45, "HARBOUR_TAVERN_THRONE_01");
    TA_SLEEP(21, 45, 7, 30, "HARBOUR_HOUSE10_72");
}
