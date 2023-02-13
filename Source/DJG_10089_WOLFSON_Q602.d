instance DJG_10089_WOLFSON_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_FRIENDLY_HUMAN;
    ID = 50016;
    VOICE = 71;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(DJG_10089_WOLFSON_Q602, 50);
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_10089_WOLFSON_Q602, MALE, HUMHEADPSIONIC, FACE_N_WOLFSON26, 1, 35520);
    MDL_APPLYOVERLAYMDS(DJG_10089_WOLFSON_Q602, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10089_WOLFSON_Q602);
    B_GIVENPCTALENTS(DJG_10089_WOLFSON_Q602);
    B_SETFIGHTSKILLS(DJG_10089_WOLFSON_Q602, 60);
    MDL_APPLYOVERLAYMDS(DJG_10089_WOLFSON_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(DJG_10089_WOLFSON_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(DJG_10089_WOLFSON_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(DJG_10089_WOLFSON_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50016;
}

func void RTN_START_50016() {
    TA_PLUNDER(8, 0, 23, 0, "PARTE4_WOLFSON_01");
    TA_PLUNDER(23, 0, 8, 0, "PARTE4_WOLFSON_01");
}
