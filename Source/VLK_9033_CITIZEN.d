instance VLK_9033_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SELLER;
    GUILD = GIL_VLK;
    ID = 9033;
    VOICE = 6;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_9033_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_9033_CITIZEN, MALE, HUMHEADBALD, FACE_N_PATRON_91, 1, 35532);
    MDL_APPLYOVERLAYMDS(VLK_9033_CITIZEN, HUMANSSELLERMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_9033_CITIZEN);
    B_GIVENPCTALENTS(VLK_9033_CITIZEN);
    B_SETFIGHTSKILLS(VLK_9033_CITIZEN, 30);
    DAILY_ROUTINE = RTN_START_9033;
    AIVAR[74] = (NPC_CITY_IAMFROMOLDCITY) | (NPC_IAMBUSY);
    AIVAR[70] = NPC_AMB_CITY_OLDCITY;
}

func void RTN_START_9033() {
    TA_STAYSTRAIGHT(7, 0, 23, 0, "PARTM5_LEON_SELL_02");
    TA_SLEEP(23, 0, 7, 0, "PARTM5_LEON_BED_03");
}

func void RTN_TOT_9033() {
    TA_STAND_GUARDING2(8, 13, 9, 13, TOT);
    TA_STAND_GUARDING2(9, 13, 8, 13, TOT);
}

