instance NONE_6708_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 0x1a34;
    VOICE = 21;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6708_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_6708_REFUGEE, MALE, HUMHEADTHIEF, FACE_B_REFUGEE69, BODYTEX_B_HOMELESS01, 0x8b02);
    MDL_APPLYOVERLAYMDS(NONE_6708_REFUGEE, HUMANSRELAXEDMDS);
    B_CREATEAMBIENTINV(NONE_6708_REFUGEE);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(NONE_6708_REFUGEE);
    B_SETFIGHTSKILLS(NONE_6708_REFUGEE, 30);
    DAILY_ROUTINE = RTN_START_6708;
    AIVAR[74] = NPC_CITY_IAMREFUGEEMATEY;
}

func void RTN_START_6708() {
    TA_STAYSTRAIGHT(7, 0, 12, 0, "PARTM1_MATEY_SPOT_08");
    TA_STAYSTRAIGHT(12, 0, 7, 0, "PARTM1_MATEY_SPOT_08");
}

func void RTN_TOT_6708() {
    TA_RUNTOWP(7, 0, 12, 0, TOT);
    TA_RUNTOWP(12, 0, 7, 0, TOT);
}

