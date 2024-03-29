instance NONE_13794_CEMETERYMADMAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_LUNATIC;
    GUILD = GIL_NONE;
    ID = 13794;
    VOICE = 46;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[52] = TRUE;
    ATTRIBUTE[4] = 1;
    AIVAR[81] = 1;
    ATTRIBUTE[5] = 1;
    AIVAR[82] = 1;
    ATTRIBUTE[3] = 1;
    AIVAR[83] = 1;
    ATTRIBUTE[2] = 1;
    ATTRIBUTE[1] = 2;
    ATTRIBUTE[0] = 2;
    FIGHT_TACTIC = FAI_HUMAN_POWERLESS;
    MDL_SETVISUAL(NONE_13794_CEMETERYMADMAN, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_13794_CEMETERYMADMAN, HUMBODYNAKED0, BODYTEX_N_HOMELESS01, 0, HUMHEADBALD, FACE_N_CEMETERYMADMAN, TEETHTEX_ROTTEN_V1, -(1));
    MDL_APPLYOVERLAYMDS(NONE_13794_CEMETERYMADMAN, HUMANSFLEEMDS);
    B_CREATEAMBIENTINV(NONE_13794_CEMETERYMADMAN);
    B_GIVENPCTALENTS(NONE_13794_CEMETERYMADMAN);
    B_SETFIGHTSKILLS(NONE_13794_CEMETERYMADMAN, 0);
    DAILY_ROUTINE = RTN_START_13794;
}

func void RTN_START_13794() {
    TA_SIT_DEPRESSION(5, 0, 21, 0, RNG_NS61_WAYPOINT);
    TA_SIT_DEPRESSION(21, 0, 5, 0, TOT2);
}

func void RTN_RUN_13794() {
    TA_FLEE_NOIQ(7, 0, 18, 0, TOT);
    TA_FLEE_NOIQ(18, 0, 7, 0, TOT);
}

