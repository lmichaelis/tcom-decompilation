instance VLK_14009_WORRIEDCITIZENMAIN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WORRIEDCITIZEN;
    GUILD = GIL_VLK;
    ID = 14009;
    VOICE = 17;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_14009_WORRIEDCITIZENMAIN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_14009_WORRIEDCITIZENMAIN, MALE, HUMHEADFATBALD, FACE_N_WORRIEDCITIZEN01, 1, 35531);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_14009_WORRIEDCITIZENMAIN);
    MDL_APPLYOVERLAYMDS(VLK_14009_WORRIEDCITIZENMAIN, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(VLK_14009_WORRIEDCITIZENMAIN);
    B_SETFIGHTSKILLS(VLK_14009_WORRIEDCITIZENMAIN, 40);
    DAILY_ROUTINE = RTN_START_14009;
}

func void RTN_START_14009() {
    TA_SEARCH_SCARED(7, 0, 10, 20, RNG_NS73_WAYPOINT);
    TA_SEARCH_SCARED(10, 20, 7, 0, RNG_NS73_WAYPOINT);
}

func void RTN_TOT_14009() {
    TA_SEARCH_SCARED(7, 0, 10, 20, TOT);
    TA_SEARCH_SCARED(10, 20, 7, 0, TOT);
}

func void RTN_FLEE_14009() {
    TA_FLEE_NOIQ(7, 0, 10, 20, TOT);
    TA_FLEE_NOIQ(10, 20, 7, 0, TOT);
}

