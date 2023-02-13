instance NONE_13880_Q308_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOMANREFUGEE;
    GUILD = GIL_NONE;
    ID = 13880;
    VOICE = 16;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13880_Q308_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13880_Q308_REFUGEE, FEMALE, HUMHEADBABE4, FACE_WN_REFUGEE76, 5, 35599);
    MDL_APPLYOVERLAYMDS(NONE_13880_Q308_REFUGEE, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13880_Q308_REFUGEE);
    B_GIVENPCTALENTS(NONE_13880_Q308_REFUGEE);
    B_SETFIGHTSKILLS(NONE_13880_Q308_REFUGEE, 20);
    DAILY_ROUTINE = RTN_START_13880;
    AIVAR[74] = NPC_Q308_IAMREFUGEE;
}

func void RTN_START_13880() {
    TA_STAND_EATING(8, 0, 22, 0, "HARBOUR_Q308_REFUGEE_03");
    TA_STAND_EATING(22, 0, 8, 0, "HARBOUR_Q308_REFUGEE_03");
}

func void RTN_TOT_13880() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

