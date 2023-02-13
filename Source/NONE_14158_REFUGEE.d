instance NONE_14158_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 14158;
    VOICE = 54;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_14158_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_14158_REFUGEE, MALE, HUMHEADBALD, FACE_B_REFUGEE118, BODYTEX_B_HOMELESS01, 35587);
    MDL_APPLYOVERLAYMDS(NONE_14158_REFUGEE, HUMANSARROGANCEMDS);
    B_CREATEAMBIENTINV(NONE_14158_REFUGEE);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(NONE_14158_REFUGEE);
    B_SETFIGHTSKILLS(NONE_14158_REFUGEE, 30);
    DAILY_ROUTINE = RTN_START_14158;
    AIVAR[74] = NPC_CITY_IAMREFUGEEMATEY;
}

func void RTN_START_14158() {
    TA_STAYSTRAIGHT(7, 0, 12, 0, "PARTM1_MATEY_SPOT_03");
    TA_STAYSTRAIGHT(12, 0, 7, 0, "PARTM1_MATEY_SPOT_03");
}

func void RTN_TOT_14158() {
    TA_RUNTOWP(7, 0, 12, 0, TOT);
    TA_RUNTOWP(12, 0, 7, 0, TOT);
}

