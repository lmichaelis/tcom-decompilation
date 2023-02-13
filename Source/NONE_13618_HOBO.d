instance NONE_13618_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOBO;
    GUILD = GIL_NONE;
    ID = 13618;
    VOICE = 6;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13618_HOBO, 24);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13618_HOBO, MALE, HUMHEADFIGHTER, FACE_B_HOBO51, BODYTEX_B_HOMELESS02, 35590);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13618_HOBO);
    B_GIVENPCTALENTS(NONE_13618_HOBO);
    B_SETFIGHTSKILLS(NONE_13618_HOBO, 30);
    DAILY_ROUTINE = RTN_START_13618;
    AIVAR[70] = NPC_AMB_CITY_HOMELESS;
}

func void RTN_START_13618() {
    TA_SIT_DEPRESSION(6, 0, 8, 0, "SLUMS_QM402_REFUGEE_02");
    TA_SIT_DEPRESSION(8, 0, 6, 0, "SLUMS_QM402_REFUGEE_02");
}

func void RTN_TOT_13618() {
    TA_FLEE_NOIQ(6, 0, 8, 0, TOT);
    TA_FLEE_NOIQ(8, 0, 6, 0, TOT);
}

