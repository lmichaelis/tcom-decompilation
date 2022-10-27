instance VLK_9032_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SELLER;
    GUILD = GIL_VLK;
    ID = 0x2348;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_9032_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_9032_CITIZEN, MALE, HUMHEADBALD, FACE_N_PATRON_90, 1, 0x8acb);
    MDL_APPLYOVERLAYMDS(VLK_9032_CITIZEN, HUMANSSELLERMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_9032_CITIZEN);
    B_GIVENPCTALENTS(VLK_9032_CITIZEN);
    B_SETFIGHTSKILLS(VLK_9032_CITIZEN, 30);
    DAILY_ROUTINE = RTN_START_9032;
    AIVAR[74] = (NPC_CITY_IAMFROMOLDCITY) | (NPC_IAMBUSY);
    AIVAR[70] = NPC_AMB_CITY_OLDCITY;
}

func void RTN_START_9032() {
    TA_STAYSTRAIGHT(7, 0, 23, 0, "PARTM5_LEON_SELL_03");
    TA_SLEEP(23, 0, 7, 0, "PARTM5_LEON_BED_01");
}

func void RTN_TOT_9032() {
    TA_STAND_GUARDING2(8, 13, 9, 13, TOT);
    TA_STAND_GUARDING2(9, 13, 8, 13, TOT);
}
