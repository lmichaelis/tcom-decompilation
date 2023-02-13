instance BAU_718_JENS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_JENS;
    GUILD = GIL_BAU;
    ID = 718;
    VOICE = 38;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BAU_718_JENS, 3);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_718_JENS, MALE, HUMHEADTHIEF, FACE_L_JENS, 2, 35572);
    MDL_APPLYOVERLAYMDS(BAU_718_JENS, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_718_JENS);
    B_GIVENPCTALENTS(BAU_718_JENS);
    B_SETFIGHTSKILLS(BAU_718_JENS, 15);
    DAILY_ROUTINE = RTN_START_718;
}

func void RTN_START_718() {
    TA_SIT_CHAIR_EAT(8, 0, 18, 0, "VILLAGE_HOUSE_08_CHAIR");
    TA_SIT_CHAIR(18, 0, 20, 0, "VILLAGE_PATH_80");
    TA_SLEEP(20, 0, 8, 0, "VILLAGE_HOUSE_08_BED01");
}

func void RTN_NORMALDAY_718() {
    TA_SCYTHE(8, 0, 15, 5, "VILLAGE_FARMLAND_09");
    TA_SMALLTALK(15, 5, 17, 0, "VILLAGE_SMALLTALK_05");
    TA_SIT_CHAIR_EAT(17, 0, 18, 0, "VILLAGE_HOUSE_08_CHAIR");
    TA_SIT_CHAIR(18, 0, 20, 0, "VILLAGE_PATH_80");
    TA_SLEEP(20, 0, 8, 0, "VILLAGE_HOUSE_08_BED01");
}

func void RTN_SQ202_718() {
    TA_STAND_ARMSCROSSED(6, 0, 8, 0, "VILLAGE_SQ202_CUTSCENE");
    TA_STAND_ARMSCROSSED(8, 0, 6, 0, "VILLAGE_SQ202_CUTSCENE");
}

func void RTN_TOT_718() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}

