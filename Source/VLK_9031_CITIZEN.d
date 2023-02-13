instance VLK_9031_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 9031;
    VOICE = 59;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_9031_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_9031_CITIZEN, MALE, HUMHEADBALD, FACE_N_PATRON_89, 1, 35530);
    MDL_APPLYOVERLAYMDS(VLK_9031_CITIZEN, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_9031_CITIZEN);
    B_GIVENPCTALENTS(VLK_9031_CITIZEN);
    B_SETFIGHTSKILLS(VLK_9031_CITIZEN, 30);
    DAILY_ROUTINE = RTN_START_9031;
    AIVAR[74] = NPC_CITY_IAMFROMOLDCITY;
    AIVAR[70] = NPC_AMB_CITY_OLDCITY;
}

func void RTN_START_9031() {
    TA_READ(7, 45, 22, 0, "PARTM5_LEON_BUY_03");
    TA_SLEEP(22, 0, 7, 45, "PARTM5_ERNESTO_BED_03");
}

func void RTN_TOT_9031() {
    TA_STAND_GUARDING2(8, 13, 9, 13, TOT);
    TA_STAND_GUARDING2(9, 13, 8, 13, TOT);
}

