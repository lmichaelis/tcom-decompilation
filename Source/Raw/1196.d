instance NONE_6701_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 0x1a2d;
    VOICE = 2;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6701_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_6701_REFUGEE, MALE, HUMHEADFATBALD, FACE_N_REFUGEE62, BODYTEX_N_HOMELESS03, 0x8b03);
    MDL_APPLYOVERLAYMDS(NONE_6701_REFUGEE, HUMANSARROGANCEMDS);
    B_CREATEAMBIENTINV(NONE_6701_REFUGEE);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(NONE_6701_REFUGEE);
    B_SETFIGHTSKILLS(NONE_6701_REFUGEE, 30);
    DAILY_ROUTINE = RTN_START_6701;
    AIVAR[74] = NPC_CITY_IAMREFUGEEMATEY;
}

func void RTN_START_6701() {
    TA_STAYSTRAIGHT(7, 0, 12, 0, "PARTM1_MATEY_SPOT_06");
    TA_STAYSTRAIGHT(12, 0, 7, 0, "PARTM1_MATEY_SPOT_06");
}

func void RTN_OUTSIDE_6701() {
    TA_SIT_BENCH(7, 0, 12, 0, "PARTM1_BIGHOUSE_05");
    TA_SIT_BENCH(12, 0, 7, 0, "PARTM1_BIGHOUSE_05");
}

func void RTN_TOT_6701() {
    TA_RUNTOWP(7, 0, 12, 0, TOT);
    TA_RUNTOWP(12, 0, 7, 0, TOT);
}
