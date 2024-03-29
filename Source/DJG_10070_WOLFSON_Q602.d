instance DJG_10070_WOLFSON_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_BDT;
    ID = 50012;
    VOICE = 51;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10070_WOLFSON_Q602, 50);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_10070_WOLFSON_Q602, MALE, HUMHEADBALD, FACE_P_WOLFSON22, 0, 35520);
    MDL_APPLYOVERLAYMDS(DJG_10070_WOLFSON_Q602, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10070_WOLFSON_Q602);
    B_GIVENPCTALENTS(DJG_10070_WOLFSON_Q602);
    B_SETFIGHTSKILLS(DJG_10070_WOLFSON_Q602, 60);
    MDL_APPLYOVERLAYMDS(DJG_10070_WOLFSON_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(DJG_10070_WOLFSON_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(DJG_10070_WOLFSON_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(DJG_10070_WOLFSON_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50012;
}

func void RTN_START_50012() {
    TA_LAUGH(8, 0, 23, 0, "PARTM1_PATH_24");
    TA_LAUGH(23, 0, 8, 0, "PARTM1_PATH_24");
}

