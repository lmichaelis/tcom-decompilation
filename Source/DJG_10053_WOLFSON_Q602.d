instance DJG_10053_WOLFSON_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_BDT;
    ID = 50007;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10053_WOLFSON_Q602, 60);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_10053_WOLFSON_Q602, MALE, HUMHEADBALD, FACE_B_WOLFSON04, BODYTEX_B, 35518);
    MDL_APPLYOVERLAYMDS(DJG_10053_WOLFSON_Q602, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10053_WOLFSON_Q602);
    B_GIVENPCTALENTS(DJG_10053_WOLFSON_Q602);
    B_SETFIGHTSKILLS(DJG_10053_WOLFSON_Q602, 70);
    MDL_APPLYOVERLAYMDS(DJG_10053_WOLFSON_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(DJG_10053_WOLFSON_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(DJG_10053_WOLFSON_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(DJG_10053_WOLFSON_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50007;
}

func void RTN_START_50007() {
    TA_SEARCH_ONLY(8, 0, 23, 0, "PARTM8_PATH_14");
    TA_SEARCH_ONLY(23, 0, 8, 0, "PARTM8_PATH_14");
}

