instance NONE_6712_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 6712;
    VOICE = 30;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6712_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_6712_REFUGEE, MALE, HUMHEADWITHOUTPONY, FACE_N_REFUGEE73, BODYTEX_N_HOMELESS02, 35589);
    MDL_APPLYOVERLAYMDS(NONE_6712_REFUGEE, HUMANSPOCKETWALKMDS);
    B_CREATEAMBIENTINV(NONE_6712_REFUGEE);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(NONE_6712_REFUGEE);
    B_SETFIGHTSKILLS(NONE_6712_REFUGEE, 30);
    DAILY_ROUTINE = RTN_START_6712;
    AIVAR[74] = NPC_CITY_IAMREFUGEEMATEY;
}

func void RTN_START_6712() {
    TA_STAYSTRAIGHT(7, 0, 12, 0, "PARTM1_MATEY_SPOT_12");
    TA_STAYSTRAIGHT(12, 0, 7, 0, "PARTM1_MATEY_SPOT_12");
}

func void RTN_TOT_6712() {
    TA_RUNTOWP(7, 0, 12, 0, TOT);
    TA_RUNTOWP(12, 0, 7, 0, TOT);
}

