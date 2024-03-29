instance VLK_14121_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 14121;
    VOICE = 67;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_14121_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_14121_CITIZEN, MALE, HUMHEADWITHOUTPONY, FACE_N_PATRON_39, 1, 35533);
    MDL_APPLYOVERLAYMDS(VLK_14121_CITIZEN, HUMANSLEADERMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_14121_CITIZEN);
    B_GIVENPCTALENTS(VLK_14121_CITIZEN);
    B_SETFIGHTSKILLS(VLK_14121_CITIZEN, 30);
    DAILY_ROUTINE = RTN_START_14121;
    AIVAR[74] = NPC_CITY_IAMFROMOLDCITY;
    AIVAR[70] = NPC_AMB_CITY_OLDCITY;
}

func void RTN_START_14121() {
    TA_READ(7, 0, 20, 0, "PARTM5_CITIZEN_03");
    TA_SIT_CHAIR(20, 0, 22, 45, "PARTM5_ERNESTO_CHAIR_07");
    TA_SLEEP(22, 45, 7, 0, "PARTM5_HOTEL_BED_07");
}

func void RTN_TOT_14121() {
    TA_CLEANWALL(8, 0, 22, 0, TOT);
    TA_CLEANWALL(22, 0, 8, 0, TOT);
}

