instance NONE_11129_REG(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_REG;
    GUILD = GIL_NONE;
    ID = 0x2b79;
    VOICE = 49;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_11129_REG, 50);
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(NONE_11129_REG, MALE, HUMHEADFATBALD, FACE_N_REG, BODYTEX_N, 0x8a97);
    MDL_APPLYOVERLAYMDS(NONE_11129_REG, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_11129_REG);
    B_GIVENPCTALENTS(NONE_11129_REG);
    B_SETFIGHTSKILLS(NONE_11129_REG, 90);
    DAILY_ROUTINE = RTN_START_11129;
}

func void RTN_START_11129() {
    TA_STAND_WP(7, 0, 22, 0, "PART2_EASTEREGG_REG");
    TA_STAND_WP(22, 0, 7, 0, "PART2_EASTEREGG_REG");
}

func void RTN_TOT_11129() {
    TA_STAND_WP(7, 0, 22, 0, TOT2);
    TA_STAND_WP(22, 0, 7, 0, TOT2);
}

