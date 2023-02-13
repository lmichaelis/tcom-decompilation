instance NONE_14153_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 14153;
    VOICE = 47;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_14153_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_14153_REFUGEE, MALE, HUMHEADPSIONIC, FACE_N_REFUGEE113, BODYTEX_N_HOMELESS02, 35588);
    MDL_APPLYOVERLAYMDS(NONE_14153_REFUGEE, HUMANSARROGANCEMDS);
    B_CREATEAMBIENTINV(NONE_14153_REFUGEE);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(NONE_14153_REFUGEE);
    B_SETFIGHTSKILLS(NONE_14153_REFUGEE, 30);
    DAILY_ROUTINE = RTN_START_14153;
    AIVAR[74] = NPC_CITY_IAMREFUGEEMATEY;
}

func void RTN_START_14153() {
    TA_STAYSTRAIGHT(7, 0, 12, 0, "PARTM1_MATEY_SPOT_06");
    TA_STAYSTRAIGHT(12, 0, 7, 0, "PARTM1_MATEY_SPOT_06");
}

func void RTN_TOT_14153() {
    TA_RUNTOWP(7, 0, 12, 0, TOT);
    TA_RUNTOWP(12, 0, 7, 0, TOT);
}
