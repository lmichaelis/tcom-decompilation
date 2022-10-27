instance NONE_13803_POTIONSELLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ALCHEMIST;
    GUILD = GIL_NONE;
    ID = 0x35eb;
    VOICE = 59;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13803_POTIONSELLER, 55);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[52] = TRUE;
    B_SETNPCVISUAL(NONE_13803_POTIONSELLER, MALE, HUMHEADPSIONIC, FACE_N_POTIONSELLER, 1, 0x8a52);
    MDL_APPLYOVERLAYMDS(NONE_13803_POTIONSELLER, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13803_POTIONSELLER);
    B_GIVENPCTALENTS(NONE_13803_POTIONSELLER);
    B_SETFIGHTSKILLS(NONE_13803_POTIONSELLER, 85);
    DAILY_ROUTINE = RTN_START_13803;
}

func void RTN_START_13803() {
    TA_SMALLTALK_POTIONSELLER(21, 0, 2, 0, RNG_NS66_WAYPOINT);
    TA_SMALLTALK_POTIONSELLER(2, 0, 21, 0, RNG_NS66_WAYPOINT);
}

func void RTN_TOT_13803() {
    TA_STAND_WP(21, 0, 2, 0, TOT2);
    TA_STAND_WP(2, 0, 21, 0, TOT2);
}

