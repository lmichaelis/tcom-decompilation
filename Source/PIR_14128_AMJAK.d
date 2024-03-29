instance PIR_14128_AMJAK(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_AMJAK;
    GUILD = GIL_PIR;
    ID = 14128;
    VOICE = 17;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(PIR_14128_AMJAK, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(PIR_14128_AMJAK, MALE, HUMHEADPONY, FACE_N_KAJMA, 1, 33570);
    MDL_APPLYOVERLAYMDS(PIR_14128_AMJAK, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(PIR_14128_AMJAK);
    B_GIVENPCTALENTS(PIR_14128_AMJAK);
    B_SETFIGHTSKILLS(PIR_14128_AMJAK, 55);
    DAILY_ROUTINE = RTN_START_14128;
}

func void RTN_START_14128() {
    TA_WATCHFIGHT(1, 0, 6, 0, RNG_NS72_WAYPOINTKAJMA);
    TA_WATCHFIGHT(6, 0, 1, 0, RNG_NS72_WAYPOINTKAJMA);
}

func void RTN_TOT_14128() {
    TA_WATCHFIGHT(1, 0, 6, 0, TOT2);
    TA_WATCHFIGHT(6, 0, 1, 0, TOT2);
}

