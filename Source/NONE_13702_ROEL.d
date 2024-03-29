instance NONE_13702_ROEL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_ROEL;
    GUILD = GIL_NONE;
    ID = 13702;
    VOICE = 8;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13702_ROEL, 18);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(NONE_13702_ROEL, 34015);
    B_CREATEAMBIENTINV(NONE_13702_ROEL);
    B_SETNPCVISUAL(NONE_13702_ROEL, MALE, HUMHEADWITHOUTPONY, FACE_N_ROEL, 29, 35591);
    MDL_APPLYOVERLAYMDS(NONE_13702_ROEL, HUMANSPOCKETWALKMDS);
    B_GIVENPCTALENTS(NONE_13702_ROEL);
    B_SETFIGHTSKILLS(NONE_13702_ROEL, 20);
    DAILY_ROUTINE = RTN_START_13702;
}

func void RTN_START_13702() {
    TA_LEAN(7, 20, 22, 10, "PART7_MINE_LEAN_01");
    TA_LEAN(22, 10, 7, 20, "PART7_MINE_LEAN_01");
}

func void RTN_TOT_13702() {
    TA_STAND_WP(8, 0, 13, 0, TOT2);
    TA_STAND_WP(13, 0, 8, 0, TOT2);
}

