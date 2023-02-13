instance DJG_10069_WOLFSON_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_BDT;
    ID = 50011;
    VOICE = 35;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10069_WOLFSON_Q602, 60);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_10069_WOLFSON_Q602, MALE, HUMHEADBALD, FACE_N_WOLFSON21, BODYTEX_N, 35518);
    MDL_APPLYOVERLAYMDS(DJG_10069_WOLFSON_Q602, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10069_WOLFSON_Q602);
    B_GIVENPCTALENTS(DJG_10069_WOLFSON_Q602);
    B_SETFIGHTSKILLS(DJG_10069_WOLFSON_Q602, 70);
    MDL_APPLYOVERLAYMDS(DJG_10069_WOLFSON_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(DJG_10069_WOLFSON_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(DJG_10069_WOLFSON_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(DJG_10069_WOLFSON_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50011;
}

func void RTN_START_50011() {
    TA_LEAN(8, 0, 23, 0, "PARTM1_PATH_28A_01");
    TA_LEAN(23, 0, 8, 0, "PARTM1_PATH_28A_01");
}

