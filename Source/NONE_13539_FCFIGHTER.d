instance NONE_13539_FCFIGHTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BOXER;
    GUILD = GIL_NONE;
    ID = 13539;
    VOICE = 70;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVELFC(NONE_13539_FCFIGHTER, 24);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13539_FCFIGHTER, MALE, HUMHEADPYMONTENEU, FACE_N_FCFIGHTER01, 1, 35427);
    B_CREATEAMBIENTINV(NONE_13539_FCFIGHTER);
    B_GIVENPCTALENTS(NONE_13539_FCFIGHTER);
    B_SETFIGHTSKILLS(NONE_13539_FCFIGHTER, 60);
    DAILY_ROUTINE = RTN_START_13539;
}

func void RTN_START_13539() {
    TA_STAND_WP_NODIALOGE(19, 30, 19, 40, TOT);
    TA_STAND_WP_NODIALOGE(19, 40, 19, 30, TOT);
}

func void RTN_WAITFIGHTCLUB_13539() {
    TA_STAYSTRAIGHT_NOIQ(19, 30, 19, 40, "SLUMS_FIGHTCLUB_01");
    TA_STAYSTRAIGHT_NOIQ(19, 40, 19, 30, "SLUMS_FIGHTCLUB_01");
}

func void RTN_FIGHTCLUB_13539() {
    TA_STAYSTRAIGHT(19, 30, 19, 40, "SLUMS_FIGHTCLUB_18");
    TA_STAYSTRAIGHT(19, 40, 19, 30, "SLUMS_FIGHTCLUB_18");
}

func void RTN_LEAN_13539() {
    TA_LEAN_DUMB_NODIALOGE(19, 30, 19, 40, "SLUMS_FIGHTCLUB_13");
    TA_LEAN_DUMB_NODIALOGE(19, 40, 19, 30, "SLUMS_FIGHTCLUB_13");
}

func void RTN_TOT_13539() {
    TA_LEAN_DUMB_NODIALOGE(19, 30, 19, 40, TOT);
    TA_LEAN_DUMB_NODIALOGE(19, 40, 19, 30, TOT);
}

