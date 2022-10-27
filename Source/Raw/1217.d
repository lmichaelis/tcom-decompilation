instance NONE_11072_THUG(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SHADYCHARACTER;
    GUILD = GIL_NONE;
    ID = 0x2b40;
    VOICE = 29;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_11072_THUG, 14);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[52] = TRUE;
    B_SETNPCVISUAL(NONE_11072_THUG, MALE, HUMHEADPYMONTENEU, FACE_L_THUG13, 2, 0x8a56);
    MDL_APPLYOVERLAYMDS(NONE_11072_THUG, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_11072_THUG);
    B_GIVENPCTALENTS(NONE_11072_THUG);
    B_SETFIGHTSKILLS(NONE_11072_THUG, 35);
    DAILY_ROUTINE = RTN_START_11072;
}

func void RTN_START_11072() {
    TA_SIT_CASUAL(20, 0, 3, 0, "PARTM1_TRAP_03");
    TA_STAND_WP(3, 0, 20, 0, TOT2);
}

func void RTN_TOT_11072() {
    TA_STAND_WP(20, 0, 3, 0, TOT2);
    TA_STAND_WP(3, 0, 20, 0, TOT2);
}

