instance NONE_11049_WOODCUTTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_NONE;
    ID = 0x2b29;
    VOICE = 60;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_11049_WOODCUTTER, 4);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_11049_WOODCUTTER, MALE, HUMHEADBALD, FACE_N_WORKER_91, 1, 0x8af4);
    MDL_APPLYOVERLAYMDS(NONE_11049_WOODCUTTER, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_11049_WOODCUTTER);
    B_GIVENPCTALENTS(NONE_11049_WOODCUTTER);
    B_SETFIGHTSKILLS(NONE_11049_WOODCUTTER, 20);
    DAILY_ROUTINE = RTN_START_11049;
}

func void RTN_START_11049() {
    TA_WOODCUTTER(6, 0, 8, 0, "PART12_WOODCUTTING_01");
    TA_WOODCUTTER(8, 0, 6, 0, "PART12_WOODCUTTING_01");
}

func void RTN_TOT_11049() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}

