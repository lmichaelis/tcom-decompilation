instance NONE_14154_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 0x374a;
    VOICE = 48;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_14154_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_14154_REFUGEE, MALE, HUMHEADPONY, FACE_N_REFUGEE114, BODYTEX_N_HOMELESS01, 0x8b05);
    MDL_APPLYOVERLAYMDS(NONE_14154_REFUGEE, HUMANSARROGANCEMDS);
    B_CREATEAMBIENTINV(NONE_14154_REFUGEE);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(NONE_14154_REFUGEE);
    B_SETFIGHTSKILLS(NONE_14154_REFUGEE, 30);
    DAILY_ROUTINE = RTN_START_14154;
    AIVAR[74] = NPC_CITY_IAMREFUGEEMATEY;
}

func void RTN_START_14154() {
    TA_STAYSTRAIGHT(7, 0, 12, 0, "PARTM1_MATEY_SPOT_07");
    TA_STAYSTRAIGHT(12, 0, 7, 0, "PARTM1_MATEY_SPOT_07");
}

func void RTN_TOT_14154() {
    TA_RUNTOWP(7, 0, 12, 0, TOT);
    TA_RUNTOWP(12, 0, 7, 0, TOT);
}
