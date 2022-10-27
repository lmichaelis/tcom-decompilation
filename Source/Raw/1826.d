instance NONE_13886_Q308_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 0x363e;
    VOICE = 55;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13886_Q308_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13886_Q308_REFUGEE, MALE, HUMHEADBALD, FACE_B_REFUGEE82, 3, 0x8a52);
    MDL_APPLYOVERLAYMDS(NONE_13886_Q308_REFUGEE, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13886_Q308_REFUGEE);
    B_GIVENPCTALENTS(NONE_13886_Q308_REFUGEE);
    B_SETFIGHTSKILLS(NONE_13886_Q308_REFUGEE, 20);
    DAILY_ROUTINE = RTN_START_13886;
    AIVAR[74] = NPC_Q308_IAMREFUGEE;
}

func void RTN_START_13886() {
    TA_STAND_DRINKING_WATER(8, 0, 22, 0, "HARBOUR_Q308_REFUGEE_09");
    TA_STAND_DRINKING_WATER(22, 0, 8, 0, "HARBOUR_Q308_REFUGEE_09");
}

func void RTN_TOT_13886() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

