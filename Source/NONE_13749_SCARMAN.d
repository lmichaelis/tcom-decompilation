instance NONE_13749_SCARMAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SCARMAN;
    GUILD = GIL_NONE;
    ID = 13749;
    VOICE = 60;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13749_SCARMAN, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(NONE_13749_SCARMAN, 34045);
    B_SETNPCVISUAL(NONE_13749_SCARMAN, MALE, HUMHEADBALD, FACE_N_SCARMAN, 1, 35479);
    MDL_APPLYOVERLAYMDS(NONE_13749_SCARMAN, HUMANSARROGANCEMDS);
    MDL_APPLYOVERLAYMDS(NONE_13749_SCARMAN, HUMANS1HST1);
    B_CREATEAMBIENTINV(NONE_13749_SCARMAN);
    B_GIVENPCTALENTS(NONE_13749_SCARMAN);
    B_SETFIGHTSKILLS(NONE_13749_SCARMAN, 20);
    DAILY_ROUTINE = RTN_START_13749;
}

func void RTN_START_13749() {
    TA_STAND_DRINKING(7, 0, 19, 35, "PARTM4_SQ207_SCARMAN");
    TA_STAND_DRINKING(19, 35, 22, 20, "PARTM4_SQ207_SCARMAN");
    TA_STAND_DRINKING(22, 20, 7, 0, "PARTM4_SQ207_SCARMAN");
}

func void RTN_FLEE_13749() {
    TA_FLEE_NOIQ(8, 0, 13, 0, TOT);
    TA_FLEE_NOIQ(13, 0, 8, 0, TOT);
}

func void RTN_TOT_13749() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}

