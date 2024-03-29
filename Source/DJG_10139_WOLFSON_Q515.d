instance DJG_10139_WOLFSON_Q515(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_NONE;
    ID = 101390;
    VOICE = 26;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    B_SETATTRIBUTESTOLEVEL(DJG_10139_WOLFSON_Q515, 50);
    AIVAR[52] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[15] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_10139_WOLFSON_Q515, MALE, HUMHEADPSIONIC, FACE_N_WOLFSON36, 1, 35520);
    MDL_APPLYOVERLAYMDS(DJG_10139_WOLFSON_Q515, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10139_WOLFSON_Q515);
    B_GIVENPCTALENTS(DJG_10139_WOLFSON_Q515);
    B_SETFIGHTSKILLS(DJG_10139_WOLFSON_Q515, 60);
    DAILY_ROUTINE = RTN_START_101390;
}

func void RTN_START_101390() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, "PART5_WOLFSON_25");
    TA_STAYSTRAIGHT(23, 0, 8, 0, "PART5_WOLFSON_25");
}

func void RTN_TOT_101390() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, TOT);
    TA_STAYSTRAIGHT(23, 0, 8, 0, TOT);
}

