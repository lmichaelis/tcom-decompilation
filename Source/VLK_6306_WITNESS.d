instance VLK_6306_WITNESS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 6306;
    VOICE = 64;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6306_WITNESS, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6306_WITNESS, MALE, HUMHEADBALD, FACE_N_WITNESS03, 2, 35546);
    MDL_APPLYOVERLAYMDS(VLK_6306_WITNESS, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6306_WITNESS);
    B_GIVENPCTALENTS(VLK_6306_WITNESS);
    B_SETFIGHTSKILLS(VLK_6306_WITNESS, 40);
    DAILY_ROUTINE = RTN_START_6306;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6306() {
    TA_STAND_GUARDING(8, 0, 13, 30, "HARBOUR_PATH_99_WITNESS03");
    TA_SEARCH_ONLY(13, 30, 8, 0, "HARBOUR_PATH_99_WITNESS03");
}

func void RTN_TOT_6306() {
    TA_STAND_GUARDING(8, 0, 13, 30, TOT);
    TA_SEARCH_ONLY(13, 30, 8, 0, TOT);
}

