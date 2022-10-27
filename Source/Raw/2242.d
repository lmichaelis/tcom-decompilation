instance BDT_13764_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BANDIT;
    GUILD = GIL_BDT;
    ID = 0x35c4;
    VOICE = 4;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13764_BANDIT, 14);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(BDT_13764_BANDIT, MALE, HUMHEADLUTTERNEU, FACE_N_BANDIT39, BODYTEX_N, 0x8a6f);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13764_BANDIT);
    B_GIVENPCTALENTS(BDT_13764_BANDIT);
    B_SETFIGHTSKILLS(BDT_13764_BANDIT, 5);
    DAILY_ROUTINE = RTN_START_13764;
}

func void RTN_START_13764() {
    TA_STAND_WP(8, 0, 12, 0, RNG_TRAP56B_WAYPOINT);
    TA_STAND_WP(12, 0, 8, 0, RNG_TRAP56B_WAYPOINT);
}

