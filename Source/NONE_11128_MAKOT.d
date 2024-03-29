instance NONE_11128_MAKOT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_MAKOT;
    GUILD = GIL_NONE;
    ID = 11128;
    VOICE = 6;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_11128_MAKOT, 50);
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(NONE_11128_MAKOT, MALE, HUMHEADBALD, FACE_N_MAKOT, BODYTEX_N, 35479);
    MDL_APPLYOVERLAYMDS(NONE_11128_MAKOT, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_11128_MAKOT);
    B_GIVENPCTALENTS(NONE_11128_MAKOT);
    B_SETFIGHTSKILLS(NONE_11128_MAKOT, 90);
    DAILY_ROUTINE = RTN_START_11128;
}

func void RTN_START_11128() {
    TA_STAND_WP(7, 0, 22, 0, "PART2_EASTEREGG_MAKOT");
    TA_STAND_WP(22, 0, 7, 0, "PART2_EASTEREGG_MAKOT");
}

func void RTN_TOT_11128() {
    TA_STAND_WP(7, 0, 22, 0, TOT2);
    TA_STAND_WP(22, 0, 7, 0, TOT2);
}

