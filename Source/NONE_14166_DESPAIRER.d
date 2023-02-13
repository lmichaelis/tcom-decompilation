instance NONE_14166_DESPAIRER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_DESPAIRER;
    GUILD = GIL_NONE;
    ID = 14166;
    VOICE = 2;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(NONE_14166_DESPAIRER, 1);
    FIGHT_TACTIC = FAI_HUMAN_POWERLESS;
    CREATEINVITEMS(NONE_14166_DESPAIRER, 39923, 1);
    B_SETNPCVISUAL(NONE_14166_DESPAIRER, MALE, HUMHEADPONY, FACE_N_DESPAIRER, BODYTEX_N_HOMELESS01, 35585);
    MDL_APPLYOVERLAYMDS(NONE_14166_DESPAIRER, HUMANSARROGANCEMDS);
    B_CREATEAMBIENTINV(NONE_14166_DESPAIRER);
    B_GIVENPCTALENTS(NONE_14166_DESPAIRER);
    B_SETFIGHTSKILLS(NONE_14166_DESPAIRER, 0);
    DAILY_ROUTINE = RTN_START_14166;
}

func void RTN_START_14166() {
    TA_STAND_DRINKING_POISON(7, 0, 12, 0, RNG_SEVENT04_WAYPOINT);
    TA_STAND_DRINKING_POISON(12, 0, 7, 0, RNG_SEVENT04_WAYPOINT);
}

