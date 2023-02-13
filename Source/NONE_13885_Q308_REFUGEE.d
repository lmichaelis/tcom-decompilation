instance NONE_13885_Q308_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 13885;
    VOICE = 50;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13885_Q308_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13885_Q308_REFUGEE, MALE, HUMHEADWITHOUTPONY, FACE_L_REFUGEE81, 2, 35542);
    MDL_APPLYOVERLAYMDS(NONE_13885_Q308_REFUGEE, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13885_Q308_REFUGEE);
    B_GIVENPCTALENTS(NONE_13885_Q308_REFUGEE);
    B_SETFIGHTSKILLS(NONE_13885_Q308_REFUGEE, 20);
    DAILY_ROUTINE = RTN_START_13885;
    AIVAR[74] = NPC_Q308_IAMREFUGEE;
}

func void RTN_START_13885() {
    TA_DRINKBARREL(8, 0, 22, 0, "HARBOUR_Q308_REFUGEE_07");
    TA_DRINKBARREL(22, 0, 8, 0, "HARBOUR_Q308_REFUGEE_07");
}

func void RTN_TOT_13885() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

