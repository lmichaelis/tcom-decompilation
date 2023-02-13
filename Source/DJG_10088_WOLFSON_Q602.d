instance DJG_10088_WOLFSON_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_BDT;
    ID = 50015;
    VOICE = 60;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10088_WOLFSON_Q602, 50);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_10088_WOLFSON_Q602, MALE, HUMHEADBALD, FACE_N_WOLFSON25, 1, 35520);
    MDL_APPLYOVERLAYMDS(DJG_10088_WOLFSON_Q602, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10088_WOLFSON_Q602);
    B_GIVENPCTALENTS(DJG_10088_WOLFSON_Q602);
    B_SETFIGHTSKILLS(DJG_10088_WOLFSON_Q602, 60);
    MDL_APPLYOVERLAYMDS(DJG_10088_WOLFSON_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(DJG_10088_WOLFSON_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(DJG_10088_WOLFSON_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(DJG_10088_WOLFSON_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50015;
}

func void RTN_START_50015() {
    TA_PLUNDER_Q602(8, 0, 23, 0, "PARTM3_PATH_195");
    TA_PLUNDER_Q602(23, 0, 8, 0, "PARTM3_PATH_195");
}

