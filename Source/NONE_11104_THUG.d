instance NONE_11104_THUG(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SHADYCHARACTER;
    GUILD = GIL_NONE;
    ID = 11104;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_11104_THUG, 31);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[52] = TRUE;
    B_SETNPCVISUAL(NONE_11104_THUG, MALE, HUMHEADUNICORNNEU, FACE_P_THUG17, 0, 35398);
    MDL_APPLYOVERLAYMDS(NONE_11104_THUG, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_11104_THUG);
    B_GIVENPCTALENTS(NONE_11104_THUG);
    B_SETFIGHTSKILLS(NONE_11104_THUG, 75);
    DAILY_ROUTINE = RTN_START_11104;
    AIVAR[75] = WALKMODE_WALK;
}

func void RTN_START_11104() {
    TA_FOLLOW_11103_THUG(21, 0, 4, 0, "PARTM1_HOBO_03");
    TA_STAND_WP(4, 0, 21, 0, TOT2);
}
