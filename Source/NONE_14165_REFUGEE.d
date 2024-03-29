instance NONE_14165_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 14165;
    VOICE = 64;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_14165_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_14165_REFUGEE, MALE, HUMHEADPONY, FACE_N_REFUGEE125, BODYTEX_N_HOMELESS01, 35587);
    MDL_APPLYOVERLAYMDS(NONE_14165_REFUGEE, HUMANSARROGANCEMDS);
    B_CREATEAMBIENTINV(NONE_14165_REFUGEE);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(NONE_14165_REFUGEE);
    B_SETFIGHTSKILLS(NONE_14165_REFUGEE, 30);
    DAILY_ROUTINE = RTN_START_14165;
    AIVAR[74] = NPC_CITY_IAMREFUGEEMATEY;
}

func void RTN_START_14165() {
    TA_STAYSTRAIGHT(7, 0, 12, 0, "PARTM1_MATEY_SPOT_10");
    TA_STAYSTRAIGHT(12, 0, 7, 0, "PARTM1_MATEY_SPOT_10");
}

func void RTN_TOT_14165() {
    TA_RUNTOWP(7, 0, 12, 0, TOT);
    TA_RUNTOWP(12, 0, 7, 0, TOT);
}

