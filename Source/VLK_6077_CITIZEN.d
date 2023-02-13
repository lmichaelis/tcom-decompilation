instance VLK_6077_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 60770;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6077_CITIZEN, 12);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6077_CITIZEN, MALE, HUMHEADFIGHTER, FACE_L_KARSTEN, 2, 35542);
    MDL_APPLYOVERLAYMDS(VLK_6077_CITIZEN, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6077_CITIZEN);
    B_GIVENPCTALENTS(VLK_6077_CITIZEN);
    B_SETFIGHTSKILLS(VLK_6077_CITIZEN, 15);
    DAILY_ROUTINE = RTN_START_60770;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_60770() {
    TA_SIT_CHAIR_EAT(8, 30, 11, 0, "PARTM1_HOTEL_CHAIR_08");
    TA_SIT_THRONE(11, 0, 12, 27, "PARTM1_HOTEL_THRONE_07");
    TA_STAND_EATING(12, 27, 16, 30, "PARTM1_STAND_07");
    TA_SMALLTALK(16, 30, 18, 0, "HARBOUR_SMALLTALK_14");
    TA_PRAYSTAND(18, 0, 19, 5, "HARBOUR_PRAY_11");
    TA_STAND_EATING(19, 5, 22, 45, "PARTM3_STAND_08");
    TA_SLEEP(22, 45, 8, 30, "PARTM1_HOTEL_BED_13");
}

