instance NONE_13591_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SUSPICIOUSREFUGEE;
    GUILD = GIL_NONE;
    ID = 13591;
    VOICE = 37;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13591_REFUGEE, 24);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13591_REFUGEE, MALE, HUMHEADFLEXNEU, FACE_L_REFUGEE46, BODYTEX_L_HOMELESS02, 35591);
    MDL_APPLYOVERLAYMDS(NONE_13591_REFUGEE, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13591_REFUGEE);
    B_GIVENPCTALENTS(NONE_13591_REFUGEE);
    B_SETFIGHTSKILLS(NONE_13591_REFUGEE, 30);
    DAILY_ROUTINE = RTN_START_13591;
}

func void RTN_START_13591() {
    TA_SIT_THRONE_NEW(6, 0, 8, 0, "HARBOUR_DARKSECRETS_CHAIR_01");
    TA_SIT_THRONE_NEW(8, 0, 6, 0, "HARBOUR_DARKSECRETS_CHAIR_01");
}

func void RTN_TOT_13591() {
    TA_FLEE_NOIQ(6, 0, 8, 0, TOT);
    TA_FLEE_NOIQ(8, 0, 6, 0, TOT);
}
