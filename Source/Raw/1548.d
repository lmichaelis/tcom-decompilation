instance VLK_14104_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 0x3718;
    VOICE = 49;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_14104_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_14104_CITIZEN, MALE, HUMHEADFATBALD, FACE_N_PATRON_28, 1, 0x8acb);
    MDL_APPLYOVERLAYMDS(VLK_14104_CITIZEN, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_14104_CITIZEN);
    B_GIVENPCTALENTS(VLK_14104_CITIZEN);
    B_SETFIGHTSKILLS(VLK_14104_CITIZEN, 30);
    DAILY_ROUTINE = RTN_START_14104;
    AIVAR[74] = NPC_CITY_IAMFROMOLDCITY;
    AIVAR[70] = NPC_AMB_CITY_OLDCITY;
}

func void RTN_START_14104() {
    TA_SMALLTALK(7, 20, 22, 10, "PARTM5_SMALLTALK_04");
    TA_SLEEP(22, 10, 7, 20, "PARTM5_HOUSE_KLAUDIOS_SLEEP_01");
}

func void RTN_TOT_14104() {
    TA_STAND_GUARDING2(8, 13, 9, 13, TOT);
    TA_STAND_GUARDING2(9, 13, 8, 13, TOT);
}

