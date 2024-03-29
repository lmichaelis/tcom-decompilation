instance BDT_13355_THUG(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_THUG;
    GUILD = GIL_BDT;
    ID = 13355;
    VOICE = 35;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[95] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13355_THUG, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13355_THUG, MALE, HUMHEADTHOMASNEU, FACE_N_THUG37, 1, 35414);
    MDL_APPLYOVERLAYMDS(BDT_13355_THUG, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13355_THUG);
    B_GIVENPCTALENTS(BDT_13355_THUG);
    B_SETFIGHTSKILLS(BDT_13355_THUG, 40);
    DAILY_ROUTINE = RTN_START_13355;
}

func void RTN_START_13355() {
    TA_STAND_WP(1, 0, 2, 0, RNG_TRAP34A35_WAYPOINT);
    TA_STAND_WP(2, 0, 1, 0, RNG_TRAP34A35_WAYPOINT);
}

func void RTN_TOT_13355() {
    TA_STAND_WP(1, 0, 2, 0, TOT);
    TA_STAND_WP(2, 0, 1, 0, TOT);
}

