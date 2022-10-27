instance NONE_13878_Q308_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 0x3636;
    VOICE = 26;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13878_Q308_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13878_Q308_REFUGEE, MALE, HUMHEADBALD, FACE_N_REFUGEE74, 1, 0x8ad6);
    MDL_APPLYOVERLAYMDS(NONE_13878_Q308_REFUGEE, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13878_Q308_REFUGEE);
    B_GIVENPCTALENTS(NONE_13878_Q308_REFUGEE);
    B_SETFIGHTSKILLS(NONE_13878_Q308_REFUGEE, 20);
    DAILY_ROUTINE = RTN_START_13878;
    AIVAR[74] = NPC_Q308_IAMREFUGEE;
}

func void RTN_START_13878() {
    TA_STAND_EATING(8, 0, 22, 0, "HARBOUR_Q308_REFUGEE_02");
    TA_STAND_EATING(22, 0, 8, 0, "HARBOUR_Q308_REFUGEE_02");
}

func void RTN_TOT_13878() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

