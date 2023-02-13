instance BAU_13872_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 13872;
    VOICE = 17;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BAU_13872_FARMER, 5);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BAU_13872_FARMER, MALE, HUMHEADTHIEF, FACE_N_FARMER64, 1, 33906);
    MDL_APPLYOVERLAYMDS(BAU_13872_FARMER, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_13872_FARMER);
    B_GIVENPCTALENTS(BAU_13872_FARMER);
    B_SETFIGHTSKILLS(BAU_13872_FARMER, 10);
    DAILY_ROUTINE = RTN_START_13872;
}

func void RTN_START_13872() {
    TA_STAYSTRAIGHT(7, 0, 21, 0, RNG_NS69_WAYPOINT);
    TA_STAYSTRAIGHT(21, 0, 7, 0, RNG_NS69_WAYPOINT);
}

func void RTN_TOT_13872() {
    TA_STAYSTRAIGHT(7, 0, 21, 0, TOT2);
    TA_STAYSTRAIGHT(21, 0, 7, 0, TOT2);
}

