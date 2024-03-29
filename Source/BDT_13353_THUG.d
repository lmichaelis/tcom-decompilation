instance BDT_13353_THUG(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_THUG;
    GUILD = GIL_BDT;
    ID = 13353;
    VOICE = 14;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[95] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13353_THUG, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13353_THUG, MALE, HUMHEADTHIEF, FACE_B_THUG35, 3, 35414);
    MDL_APPLYOVERLAYMDS(BDT_13353_THUG, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13353_THUG);
    B_GIVENPCTALENTS(BDT_13353_THUG);
    B_SETFIGHTSKILLS(BDT_13353_THUG, 40);
    DAILY_ROUTINE = RTN_START_13353;
}

func void RTN_START_13353() {
    TA_STAND_WP(1, 0, 2, 0, RNG_TRAP33_WAYPOINT);
    TA_STAND_WP(2, 0, 1, 0, TOT);
}

