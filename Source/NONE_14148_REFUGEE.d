instance NONE_14148_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 14148;
    VOICE = 43;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_14148_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_14148_REFUGEE, MALE, HUMHEADBALD, FACE_N_REFUGEE108, BODYTEX_N_HOMELESS02, 35587);
    MDL_APPLYOVERLAYMDS(NONE_14148_REFUGEE, HUMANSARROGANCEMDS);
    B_CREATEAMBIENTINV(NONE_14148_REFUGEE);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(NONE_14148_REFUGEE);
    B_SETFIGHTSKILLS(NONE_14148_REFUGEE, 30);
    DAILY_ROUTINE = RTN_START_14148;
    AIVAR[74] = NPC_CITY_IAMREFUGEEMATEY;
}

func void RTN_START_14148() {
    TA_STAYSTRAIGHT(7, 0, 12, 0, "PARTM1_MATEY_SPOT_01");
    TA_STAYSTRAIGHT(12, 0, 7, 0, "PARTM1_MATEY_SPOT_01");
}

func void RTN_TOT_14148() {
    TA_RUNTOWP(7, 0, 12, 0, TOT);
    TA_RUNTOWP(12, 0, 7, 0, TOT);
}

