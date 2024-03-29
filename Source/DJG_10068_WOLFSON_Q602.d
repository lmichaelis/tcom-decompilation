instance DJG_10068_WOLFSON_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_BDT;
    ID = 50010;
    VOICE = 61;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10068_WOLFSON_Q602, 60);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_10068_WOLFSON_Q602, MALE, HUMHEADBALD, FACE_N_WOLFSON01, BODYTEX_N, 35518);
    MDL_APPLYOVERLAYMDS(DJG_10068_WOLFSON_Q602, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10068_WOLFSON_Q602);
    B_GIVENPCTALENTS(DJG_10068_WOLFSON_Q602);
    B_SETFIGHTSKILLS(DJG_10068_WOLFSON_Q602, 70);
    MDL_APPLYOVERLAYMDS(DJG_10068_WOLFSON_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(DJG_10068_WOLFSON_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(DJG_10068_WOLFSON_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(DJG_10068_WOLFSON_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50010;
}

func void RTN_START_50010() {
    TA_CHECKSWD(8, 0, 23, 0, "PARTE1_WOLFSSON_02");
    TA_CHECKSWD(23, 0, 8, 0, "PARTE1_WOLFSSON_02");
}

