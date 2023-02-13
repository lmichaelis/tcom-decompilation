instance NONE_13907_Q308_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOMANREFUGEE;
    GUILD = GIL_NONE;
    ID = 13907;
    VOICE = 33;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13907_Q308_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13907_Q308_REFUGEE, FEMALE, HUMHEADBABE4, FACE_WP_REFUGEE92, 4, 35599);
    MDL_APPLYOVERLAYMDS(NONE_13907_Q308_REFUGEE, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13907_Q308_REFUGEE);
    B_GIVENPCTALENTS(NONE_13907_Q308_REFUGEE);
    B_SETFIGHTSKILLS(NONE_13907_Q308_REFUGEE, 20);
    DAILY_ROUTINE = RTN_START_13907;
    AIVAR[74] = NPC_Q308_IAMREFUGEE;
}

func void RTN_START_13907() {
    TA_STAND_DRINKING_WATER(8, 0, 22, 0, "SLUMS_Q308_REFUGEE_02");
    TA_STAND_DRINKING_WATER(22, 0, 8, 0, "SLUMS_Q308_REFUGEE_02");
}

func void RTN_TOT_13907() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

