instance DJG_10054_WOLFSON_Q515(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_NONE;
    ID = 0x188bd;
    VOICE = 25;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10054_WOLFSON_Q515, 50);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[15] = TRUE;
    B_SETNPCVISUAL(DJG_10054_WOLFSON_Q515, MALE, HUMHEADBALD, FACE_N_WOLFSON02, BODYTEX_P, 0x8ac0);
    MDL_APPLYOVERLAYMDS(DJG_10054_WOLFSON_Q515, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10054_WOLFSON_Q515);
    B_GIVENPCTALENTS(DJG_10054_WOLFSON_Q515);
    B_SETFIGHTSKILLS(DJG_10054_WOLFSON_Q515, 80);
    DAILY_ROUTINE = RTN_START_100541;
}

func void RTN_START_100541() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, "PART5_WOLFSON_11");
    TA_STAYSTRAIGHT(23, 0, 8, 0, "PART5_WOLFSON_11");
}

func void RTN_TOT_100541() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, TOT);
    TA_STAYSTRAIGHT(23, 0, 8, 0, TOT);
}

