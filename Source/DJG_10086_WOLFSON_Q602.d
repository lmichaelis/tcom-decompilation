instance DJG_10086_WOLFSON_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_BDT;
    ID = 50013;
    VOICE = 54;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10086_WOLFSON_Q602, 50);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_10086_WOLFSON_Q602, MALE, HUMHEADFIGHTER, FACE_B_WOLFSON23, 3, 35520);
    MDL_APPLYOVERLAYMDS(DJG_10086_WOLFSON_Q602, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10086_WOLFSON_Q602);
    B_GIVENPCTALENTS(DJG_10086_WOLFSON_Q602);
    B_SETFIGHTSKILLS(DJG_10086_WOLFSON_Q602, 60);
    MDL_APPLYOVERLAYMDS(DJG_10086_WOLFSON_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(DJG_10086_WOLFSON_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(DJG_10086_WOLFSON_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(DJG_10086_WOLFSON_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50013;
}

func void RTN_START_50013() {
    TA_PLUNDER_Q602(8, 0, 23, 0, "PARTE3_WOLFSON_01");
    TA_PLUNDER_Q602(23, 0, 8, 0, "PARTE3_WOLFSON_01");
}

