instance NONE_6709_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 6709;
    VOICE = 22;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6709_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_6709_REFUGEE, MALE, HUMHEADPSIONIC, FACE_L_REFUGEE70, BODYTEX_L_HOMELESS02, 35587);
    MDL_APPLYOVERLAYMDS(NONE_6709_REFUGEE, HUMANSRELAXEDMDS);
    B_CREATEAMBIENTINV(NONE_6709_REFUGEE);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(NONE_6709_REFUGEE);
    B_SETFIGHTSKILLS(NONE_6709_REFUGEE, 30);
    DAILY_ROUTINE = RTN_START_6709;
    AIVAR[74] = NPC_CITY_IAMREFUGEEMATEY;
}

func void RTN_START_6709() {
    TA_STAYSTRAIGHT(7, 0, 12, 0, "PARTM1_MATEY_SPOT_09");
    TA_STAYSTRAIGHT(12, 0, 7, 0, "PARTM1_MATEY_SPOT_09");
}

func void RTN_TOT_6709() {
    TA_RUNTOWP(7, 0, 12, 0, TOT);
    TA_RUNTOWP(12, 0, 7, 0, TOT);
}

