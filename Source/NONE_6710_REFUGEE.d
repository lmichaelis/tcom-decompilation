instance NONE_6710_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 6710;
    VOICE = 23;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6710_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_6710_REFUGEE, MALE, HUMHEADPONY, FACE_P_REFUGEE71, BODYTEX_P_HOMELESS01, 35589);
    MDL_APPLYOVERLAYMDS(NONE_6710_REFUGEE, HUMANSARROGANCEMDS);
    B_CREATEAMBIENTINV(NONE_6710_REFUGEE);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(NONE_6710_REFUGEE);
    B_SETFIGHTSKILLS(NONE_6710_REFUGEE, 30);
    DAILY_ROUTINE = RTN_START_6710;
    AIVAR[74] = NPC_CITY_IAMREFUGEEMATEY;
}

func void RTN_START_6710() {
    TA_STAYSTRAIGHT(7, 0, 12, 0, "PARTM1_MATEY_SPOT_10");
    TA_STAYSTRAIGHT(12, 0, 7, 0, "PARTM1_MATEY_SPOT_10");
}

func void RTN_TOT_6710() {
    TA_RUNTOWP(7, 0, 12, 0, TOT);
    TA_RUNTOWP(12, 0, 7, 0, TOT);
}
