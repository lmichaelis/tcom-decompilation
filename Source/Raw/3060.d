instance DJG_100351_WOLFSON_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_BDT;
    ID = 0xc388;
    VOICE = 42;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_100351_WOLFSON_Q602, 50);
    FIGHT_TACTIC = FAI_HUMAN_NOJUMP;
    B_SETNPCVISUAL(DJG_100351_WOLFSON_Q602, MALE, HUMHEADBALD, FACE_N_WOLFSON79, 1, 0x8ac0);
    MDL_APPLYOVERLAYMDS(DJG_100351_WOLFSON_Q602, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_100351_WOLFSON_Q602);
    B_GIVENPCTALENTS(DJG_100351_WOLFSON_Q602);
    B_SETFIGHTSKILLS(DJG_100351_WOLFSON_Q602, 60);
    MDL_APPLYOVERLAYMDS(DJG_100351_WOLFSON_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(DJG_100351_WOLFSON_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(DJG_100351_WOLFSON_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(DJG_100351_WOLFSON_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50056;
}

func void RTN_START_50056() {
    TA_STAND_WP(8, 0, 23, 0, "PARTE8_WOLFSON_01");
    TA_STAND_WP(23, 0, 8, 0, "PARTE8_WOLFSON_01");
}
