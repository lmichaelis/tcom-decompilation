instance NONE_13913_Q308_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 0x3659;
    VOICE = 55;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13913_Q308_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13913_Q308_REFUGEE, MALE, HUMHEADWITHOUTPONY, FACE_N_REFUGEE97, 1, 0x8a52);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13913_Q308_REFUGEE);
    B_GIVENPCTALENTS(NONE_13913_Q308_REFUGEE);
    B_SETFIGHTSKILLS(NONE_13913_Q308_REFUGEE, 20);
    DAILY_ROUTINE = RTN_START_13913;
    AIVAR[74] = NPC_Q308_IAMREFUGEE;
}

func void RTN_START_13913() {
    TA_STAND_DRINKING_WATER(8, 0, 22, 0, "SLUMS_Q308_REFUGEE_05");
    TA_STAND_DRINKING_WATER(22, 0, 8, 0, "SLUMS_Q308_REFUGEE_05");
}

func void RTN_TOT_13913() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

