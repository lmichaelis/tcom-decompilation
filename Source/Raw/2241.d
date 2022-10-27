instance BDT_13763_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BANDIT;
    GUILD = GIL_BDT;
    ID = 0x35c3;
    VOICE = 3;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13763_BANDIT, 12);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(BDT_13763_BANDIT, MALE, HUMHEADPFEIFFERNEU, FACE_P_BANDIT38, BODYTEX_P, 0x8a6f);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13763_BANDIT);
    B_GIVENPCTALENTS(BDT_13763_BANDIT);
    B_SETFIGHTSKILLS(BDT_13763_BANDIT, 5);
    DAILY_ROUTINE = RTN_START_13763;
}

func void RTN_START_13763() {
    TA_STAND_WP(8, 0, 12, 0, RNG_TRAP56A_WAYPOINT);
    TA_STAND_WP(12, 0, 8, 0, RNG_TRAP56A_WAYPOINT);
}
