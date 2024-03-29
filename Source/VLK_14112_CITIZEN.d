instance VLK_14112_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 14112;
    VOICE = 6;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_14112_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_14112_CITIZEN, MALE, HUMHEADFATBALD, FACE_N_PATRON_32, 1, 35530);
    MDL_APPLYOVERLAYMDS(VLK_14112_CITIZEN, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_14112_CITIZEN);
    B_GIVENPCTALENTS(VLK_14112_CITIZEN);
    B_SETFIGHTSKILLS(VLK_14112_CITIZEN, 30);
    DAILY_ROUTINE = RTN_START_14112;
    AIVAR[74] = NPC_CITY_IAMFROMOLDCITY;
    AIVAR[70] = NPC_AMB_CITY_OLDCITY;
}

func void RTN_START_14112() {
    TA_SIT_BENCH_DRINK(7, 0, 22, 0, "PARTM5_BENCH_04");
    TA_SLEEP(22, 0, 7, 0, "PARTM5_HOTEL_BED_03");
}

func void RTN_TOT_14112() {
    TA_CLEANWALL(8, 0, 22, 0, TOT);
    TA_CLEANWALL(22, 0, 8, 0, TOT);
}

