instance NONE_6704_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 0x1a30;
    VOICE = 7;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6704_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_6704_REFUGEE, MALE, HUMHEADPSIONIC, FACE_N_REFUGEE65, BODYTEX_N_HOMELESS01, 0x8b05);
    MDL_APPLYOVERLAYMDS(NONE_6704_REFUGEE, HUMANSTIREDMDS);
    B_CREATEAMBIENTINV(NONE_6704_REFUGEE);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(NONE_6704_REFUGEE);
    B_SETFIGHTSKILLS(NONE_6704_REFUGEE, 30);
    DAILY_ROUTINE = RTN_START_6704;
    AIVAR[74] = NPC_CITY_IAMREFUGEEMATEY;
}

func void RTN_START_6704() {
    TA_STAYSTRAIGHT(7, 0, 12, 0, "PARTM1_MATEY_SPOT_03");
    TA_STAYSTRAIGHT(12, 0, 7, 0, "PARTM1_MATEY_SPOT_03");
}

func void RTN_TOT_6704() {
    TA_RUNTOWP(7, 0, 12, 0, TOT);
    TA_RUNTOWP(12, 0, 7, 0, TOT);
}
