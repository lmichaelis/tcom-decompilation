instance DJG_10068_WOLFSON_Q515(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_NONE;
    ID = 0x18948;
    VOICE = 61;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10068_WOLFSON_Q515, 60);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[15] = TRUE;
    B_SETNPCVISUAL(DJG_10068_WOLFSON_Q515, MALE, HUMHEADBALD, FACE_N_WOLFSON01, BODYTEX_N, 0x8abe);
    MDL_APPLYOVERLAYMDS(DJG_10068_WOLFSON_Q515, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10068_WOLFSON_Q515);
    B_GIVENPCTALENTS(DJG_10068_WOLFSON_Q515);
    B_SETFIGHTSKILLS(DJG_10068_WOLFSON_Q515, 70);
    DAILY_ROUTINE = RTN_START_100680;
}

func void RTN_START_100680() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, "PART5_WOLFSON_08");
    TA_STAYSTRAIGHT(23, 0, 8, 0, "PART5_WOLFSON_08");
}

func void RTN_TOT_100680() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, TOT);
    TA_STAYSTRAIGHT(23, 0, 8, 0, TOT);
}
