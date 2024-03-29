instance NONE_13627_SMUGGLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SHADYCHARACTER;
    GUILD = GIL_NONE;
    ID = 13627;
    VOICE = 59;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_13627_SMUGGLER, 33);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13627_SMUGGLER, MALE, HUMHEADFATBALD, FACE_N_SMUGGLER15, 1, 35422);
    MDL_APPLYOVERLAYMDS(NONE_13627_SMUGGLER, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13627_SMUGGLER);
    B_GIVENPCTALENTS(NONE_13627_SMUGGLER);
    B_SETFIGHTSKILLS(NONE_13627_SMUGGLER, 40);
    DAILY_ROUTINE = RTN_START_13627;
    AIVAR[75] = WALKMODE_WALK;
    AIVAR[74] = NPC_IAMGETORYKSPY;
}

func void RTN_START_13627() {
    TA_FOLLOW_PLAYER(8, 0, 13, 0, RNG_TRAP46A49_WAYPOINT);
    TA_FOLLOW_PLAYER(13, 0, 8, 0, RNG_TRAP46A49_WAYPOINT);
}

func void RTN_TOT_13627() {
    TA_STAND_WP(8, 0, 13, 0, TOT2);
    TA_STAND_WP(13, 0, 8, 0, TOT2);
}

