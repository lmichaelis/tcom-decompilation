instance MIL_13751_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 13751;
    VOICE = 58;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_13751_MILITIA, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13751_MILITIA, MALE, HUMHEADPONY, FACE_N_MILITIA100, 1, 35501);
    MDL_APPLYOVERLAYMDS(MIL_13751_MILITIA, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13751_MILITIA);
    B_GIVENPCTALENTS(MIL_13751_MILITIA);
    B_SETFIGHTSKILLS(MIL_13751_MILITIA, 60);
    DAILY_ROUTINE = RTN_START_13751;
}

func void RTN_START_13751() {
    TA_STAND_GUARDING(7, 0, 19, 35, "PART4_PATH_Q506_GUARD_02");
    TA_STAND_GUARDING(19, 35, 7, 0, "PART4_PATH_Q506_GUARD_02");
}

func void RTN_SCARED_13751() {
    TA_SEARCH_SCARED(8, 0, 13, 0, "PART4_PATH_Q506_DUSTER");
    TA_SEARCH_SCARED(13, 0, 8, 0, "PART4_PATH_Q506_DUSTER");
}

func void RTN_FLEE_13751() {
    TA_FLEE_NOIQ(8, 0, 13, 0, TOT);
    TA_FLEE_NOIQ(13, 0, 8, 0, TOT);
}

func void RTN_TOT_13751() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}
