instance VLK_14110_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 14110;
    VOICE = 59;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_14110_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_14110_CITIZEN, MALE, HUMHEADBALD, FACE_N_PATRON_94, 1, 35533);
    MDL_APPLYOVERLAYMDS(VLK_14110_CITIZEN, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_14110_CITIZEN);
    B_GIVENPCTALENTS(VLK_14110_CITIZEN);
    B_SETFIGHTSKILLS(VLK_14110_CITIZEN, 30);
    DAILY_ROUTINE = RTN_START_14110;
    AIVAR[74] = NPC_CITY_IAMFROMOLDCITY;
    AIVAR[70] = NPC_AMB_CITY_OLDCITY;
}

func void RTN_START_14110() {
    TA_SMALLTALK(7, 0, 23, 0, "PARTM5_ERNESTO_SMALLTALK_01");
    TA_SLEEP(23, 0, 7, 0, "PARTM5_HOUSE_KLAUDIOS_SLEEP_07");
}

func void RTN_TOT_14110() {
    TA_STAND_GUARDING2(8, 13, 9, 13, TOT);
    TA_STAND_GUARDING2(9, 13, 8, 13, TOT);
}
