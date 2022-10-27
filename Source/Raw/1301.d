instance NONE_11114_THUG(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SHADYCHARACTER;
    GUILD = GIL_NONE;
    ID = 0x2b6a;
    VOICE = 70;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_11114_THUG, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[52] = TRUE;
    B_SETNPCVISUAL(NONE_11114_THUG, MALE, HUMHEADTHIEF, FACE_N_THUG19, 1, 0x8a5e);
    MDL_APPLYOVERLAYMDS(NONE_11114_THUG, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_11114_THUG);
    B_GIVENPCTALENTS(NONE_11114_THUG);
    B_SETFIGHTSKILLS(NONE_11114_THUG, 75);
    DAILY_ROUTINE = RTN_START_11114;
}

func void RTN_START_11114() {
    TA_SIT_CAMPFIRE(21, 0, 2, 0, "PARTM2_PATH_143");
    TA_SIT_CAMPFIRE(2, 0, 21, 0, TOT2);
}

