instance BAU_6287_GONZALO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARBEITER;
    GUILD = GIL_BAU;
    ID = 0x188f;
    VOICE = 25;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BAU_6287_GONZALO, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETNPCVISUAL(BAU_6287_GONZALO, MALE, HUMHEADBALD, FACE_L_GONZALO, 2, 0x8472);
    MDL_APPLYOVERLAYMDS(BAU_6287_GONZALO, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_6287_GONZALO);
    B_GIVENPCTALENTS(BAU_6287_GONZALO);
    B_SETFIGHTSKILLS(BAU_6287_GONZALO, 30);
    DAILY_ROUTINE = RTN_START_6287;
}

func void RTN_START_6287() {
    TA_SIT_CASUAL(8, 0, 12, 0, "PART15_VINEYARD_GONZALO");
    TA_SIT_CASUAL(12, 0, 8, 0, "PART15_VINEYARD_GONZALO");
}

func void RTN_GUIDE_6287() {
    TA_GUIDE_PLAYER_BLIND(8, 0, 12, 0, "PART15_PATH_218");
    TA_GUIDE_PLAYER_BLIND(12, 0, 8, 0, "PART15_PATH_218");
}

func void RTN_CUTSCENE_6287() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 12, 0, "PART15_PATH_219");
    TA_STAYSTRAIGHT_NOIQ(12, 0, 8, 0, "PART15_PATH_219");
}

func void RTN_Q304_6287() {
    TA_SIT_CHAIR(8, 0, 12, 0, "PART17_CAVE_CHAIR");
    TA_SIT_CHAIR(12, 0, 8, 0, "PART17_CAVE_CHAIR");
}

func void RTN_ANTONIOVINEYARD_6287() {
    TA_IDLE(8, 0, 12, 0, "PART15_VINEYARD_PATH_32");
    TA_IDLE(12, 0, 8, 0, "PART15_VINEYARD_PATH_32");
}

func void RTN_ANTONIOESCAPE_6287() {
    TA_FLEE_NOMONSTERS(8, 0, 12, 0, "PART15_PATH_11");
    TA_FLEE_NOMONSTERS(12, 0, 8, 0, "PART15_PATH_11");
}

func void RTN_ANTONIOSCARED_6287() {
    TA_SEARCH_SCARED(8, 0, 12, 0, "PART15_PATH_11");
    TA_SEARCH_SCARED(12, 0, 8, 0, "PART15_PATH_11");
}

func void RTN_SWAMPCAVEDEAD_6287() {
    TA_STAYSTRAIGHT(8, 0, 12, 0, "PART17_PATH_226");
    TA_STAYSTRAIGHT(12, 0, 8, 0, "PART17_PATH_226");
}

func void RTN_SWAMPCAVE_FINALCUTSCENE_6287() {
    TA_STAYSTRAIGHT_DIALOGUE(1, 0, 6, 0, "PART17_CAVE_CUTSCENE_GONZALO");
    TA_STAYSTRAIGHT_DIALOGUE(6, 0, 1, 0, "PART17_CAVE_CUTSCENE_GONZALO");
}
