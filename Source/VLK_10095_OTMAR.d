instance VLK_10095_OTMAR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_OTMAR;
    GUILD = GIL_VLK;
    ID = 10095;
    VOICE = 46;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_10095_OTMAR, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    MDL_SETVISUAL(VLK_10095_OTMAR, HUMANSMDS);
    MDL_SETVISUALBODY(VLK_10095_OTMAR, HUMBODYNAKED0, BODYTEX_L, 0, HUMHEADWITHOUTPONY, FACE_L_OTMAR, 4, 35529);
    MDL_APPLYOVERLAYMDS(VLK_10095_OTMAR, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_10095_OTMAR);
    B_GIVENPCTALENTS(VLK_10095_OTMAR);
    B_SETFIGHTSKILLS(VLK_10095_OTMAR, 40);
    DAILY_ROUTINE = RTN_START_10095;
}

func void RTN_START_10095() {
    TA_CHECKLIST(7, 30, 14, 0, "PARTM1_OTMAR");
    TA_SMOKE_JOINT(14, 0, 18, 0, "PARTM1_OTMAR_SMOKE");
    TA_READ(18, 0, 22, 0, "PARTM1_OTMAR");
    TA_STAND_EATING(22, 0, 23, 0, "PARTM1_GUILDHOUSE_LIVINGROOM_STAND_04");
    TA_SLEEP(23, 0, 7, 30, "PARTM1_GUILDHOUSE_LIVINGROOM_BED_03");
}

func void RTN_QA304_SHIP_10095() {
    TA_LOOKOUT(7, 30, 14, 0, "HARBOUR_QA304_FULKO");
    TA_LOOKOUT(14, 0, 7, 30, "HARBOUR_QA304_FULKO");
}

func void RTN_QA304_SLUMS_10095() {
    TA_RUNTOWP_NOIQ(7, 30, 14, 0, "SLUMS_QA304_SPOT_02");
    TA_RUNTOWP_NOIQ(14, 0, 7, 30, "SLUMS_QA304_SPOT_02");
}

func void RTN_QA304_SLUMSV2_10095() {
    TA_SEARCH_ONLY(7, 30, 14, 0, "SLUMS_QA304_SPOT_02");
    TA_SEARCH_ONLY(14, 0, 7, 30, "SLUMS_QA304_SPOT_02");
}

func void RTN_QA401_FLEE_10095() {
    TA_SIT_CASUAL(7, 30, 14, 0, "PART15_VINEYARD_PATH_34");
    TA_SIT_CASUAL(14, 0, 7, 30, "PART15_VINEYARD_PATH_34");
}

func void RTN_TOT_10095() {
    TA_SEARCH_ONLY(7, 30, 14, 0, TOT);
    TA_SEARCH_ONLY(14, 0, 7, 30, TOT);
}

