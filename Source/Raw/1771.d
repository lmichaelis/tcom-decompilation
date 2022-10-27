instance MIL_11268_GARRUS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_GARRUS;
    GUILD = GIL_MIL;
    ID = 0x2c04;
    VOICE = 67;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_11268_GARRUS, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_11268_GARRUS, MALE, HUMHEADBALD, FACE_N_GARRUS, 1, 0x8aa5);
    MDL_APPLYOVERLAYMDS(MIL_11268_GARRUS, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_11268_GARRUS);
    B_GIVENPCTALENTS(MIL_11268_GARRUS);
    B_SETFIGHTSKILLS(MIL_11268_GARRUS, 50);
    DAILY_ROUTINE = RTN_START_11268;
}

func void RTN_START_11268() {
    TA_PUSHCANON(5, 0, 22, 0, RNG_NS09_WAYPOINT);
    TA_PUSHCANON(22, 0, 5, 0, RNG_NS09_WAYPOINT);
}

