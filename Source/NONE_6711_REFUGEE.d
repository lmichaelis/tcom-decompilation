instance NONE_6711_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 6711;
    VOICE = 24;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6711_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_6711_REFUGEE, MALE, HUMHEADPYMONTENEU, FACE_N_REFUGEE72, BODYTEX_N_HOMELESS03, 35591);
    MDL_APPLYOVERLAYMDS(NONE_6711_REFUGEE, HUMANSRELAXEDMDS);
    B_CREATEAMBIENTINV(NONE_6711_REFUGEE);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(NONE_6711_REFUGEE);
    B_SETFIGHTSKILLS(NONE_6711_REFUGEE, 30);
    DAILY_ROUTINE = RTN_START_6711;
    AIVAR[74] = NPC_CITY_IAMREFUGEEMATEY;
}

func void RTN_START_6711() {
    TA_STAYSTRAIGHT(7, 0, 12, 0, "PARTM1_MATEY_SPOT_11");
    TA_STAYSTRAIGHT(12, 0, 7, 0, "PARTM1_MATEY_SPOT_11");
}

func void RTN_TOT_6711() {
    TA_RUNTOWP(7, 0, 12, 0, TOT);
    TA_RUNTOWP(12, 0, 7, 0, TOT);
}

