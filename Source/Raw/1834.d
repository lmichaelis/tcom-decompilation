instance NONE_13905_Q308_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 0x3651;
    VOICE = 54;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13905_Q308_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13905_Q308_REFUGEE, MALE, HUMHEADPSIONIC, FACE_N_REFUGEE90, 1, 0x8ad6);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13905_Q308_REFUGEE);
    B_GIVENPCTALENTS(NONE_13905_Q308_REFUGEE);
    B_SETFIGHTSKILLS(NONE_13905_Q308_REFUGEE, 20);
    DAILY_ROUTINE = RTN_START_13905;
    AIVAR[74] = NPC_Q308_IAMREFUGEE;
}

func void RTN_START_13905() {
    TA_STAND_EATING(8, 0, 22, 0, "HARBOUR_Q308_REFUGEE_18");
    TA_STAND_EATING(22, 0, 8, 0, "HARBOUR_Q308_REFUGEE_18");
}

func void RTN_TOT_13905() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

