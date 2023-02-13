instance NONE_13791_STRANGECOOK(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_STRANGECOOK;
    GUILD = GIL_NONE;
    ID = 13791;
    VOICE = 64;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13791_STRANGECOOK, 18);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13791_STRANGECOOK, MALE, HUMHEADPONY, FACE_N_STRANGECOOK, 1, 35571);
    MDL_APPLYOVERLAYMDS(NONE_13791_STRANGECOOK, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13791_STRANGECOOK);
    B_GIVENPCTALENTS(NONE_13791_STRANGECOOK);
    B_SETFIGHTSKILLS(NONE_13791_STRANGECOOK, 20);
    DAILY_ROUTINE = RTN_START_13791;
}

func void RTN_START_13791() {
    TA_STAYSTRAIGHT(8, 0, 13, 30, RNG_NS59_WAYPOINT);
    TA_STAYSTRAIGHT(13, 30, 8, 0, RNG_NS59_WAYPOINT);
}

func void RTN_TOT_13791() {
    TA_STAYSTRAIGHT(5, 30, 9, 0, TOT);
    TA_STAYSTRAIGHT(9, 0, 5, 30, TOT);
}

