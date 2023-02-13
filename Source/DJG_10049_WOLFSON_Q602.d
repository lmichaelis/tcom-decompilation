instance DJG_10049_WOLFSON_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_BDT;
    ID = 50003;
    VOICE = 3;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10049_WOLFSON_Q602, 60);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_10049_WOLFSON_Q602, MALE, HUMHEADBALD, FACE_P_WOLFSON19, 1, 35518);
    MDL_APPLYOVERLAYMDS(DJG_10049_WOLFSON_Q602, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10049_WOLFSON_Q602);
    B_GIVENPCTALENTS(DJG_10049_WOLFSON_Q602);
    B_SETFIGHTSKILLS(DJG_10049_WOLFSON_Q602, 70);
    MDL_APPLYOVERLAYMDS(DJG_10049_WOLFSON_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(DJG_10049_WOLFSON_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(DJG_10049_WOLFSON_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(DJG_10049_WOLFSON_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50003;
}

func void RTN_START_50003() {
    TA_LAUGH(8, 0, 23, 0, "PARTM2_PATH_77");
    TA_LAUGH(23, 0, 8, 0, "PARTM2_PATH_77");
}
