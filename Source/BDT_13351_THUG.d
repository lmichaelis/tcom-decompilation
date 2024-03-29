instance BDT_13351_THUG(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_THUG;
    GUILD = GIL_BDT;
    ID = 13351;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[95] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13351_THUG, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13351_THUG, MALE, HUMHEADFLEXNEU, FACE_L_THUG33, 2, 35414);
    MDL_APPLYOVERLAYMDS(BDT_13351_THUG, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13351_THUG);
    B_GIVENPCTALENTS(BDT_13351_THUG);
    B_SETFIGHTSKILLS(BDT_13351_THUG, 40);
    DAILY_ROUTINE = RTN_START_13351;
}

func void RTN_START_13351() {
    TA_STAND_WP(16, 0, 18, 0, RNG_TRAP31_WAYPOINT);
    TA_STAND_WP(18, 0, 16, 0, TOT);
}

