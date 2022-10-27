instance VLK_14113_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 0x3721;
    VOICE = 28;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_14113_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_14113_CITIZEN, MALE, HUMHEADBALD, FACE_N_PATRON_33, 1, 0x8acb);
    MDL_APPLYOVERLAYMDS(VLK_14113_CITIZEN, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_14113_CITIZEN);
    B_GIVENPCTALENTS(VLK_14113_CITIZEN);
    B_SETFIGHTSKILLS(VLK_14113_CITIZEN, 30);
    DAILY_ROUTINE = RTN_START_14113;
    AIVAR[74] = NPC_CITY_IAMFROMOLDCITY;
    AIVAR[70] = NPC_AMB_CITY_OLDCITY;
}

func void RTN_START_14113() {
    TA_PAITING(7, 7, 18, 15, "PARTM5_PAITING_02");
    TA_SIT_CHAIR(18, 15, 22, 20, "PARTM5_ERNESTO_CHAIR_08");
    TA_SLEEP(22, 20, 7, 7, "PARTM5_HOTEL_BED_04");
}

func void RTN_TOT_14113() {
    TA_CLEANWALL(8, 0, 22, 0, TOT);
    TA_CLEANWALL(22, 0, 8, 0, TOT);
}

