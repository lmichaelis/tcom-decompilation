instance DJG_10049_WOLFSON_Q515(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_NONE;
    ID = 0x1888a;
    VOICE = 13;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10049_WOLFSON_Q515, 60);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[15] = TRUE;
    B_SETNPCVISUAL(DJG_10049_WOLFSON_Q515, MALE, HUMHEADBALD, FACE_P_WOLFSON19, 1, 0x8abe);
    MDL_APPLYOVERLAYMDS(DJG_10049_WOLFSON_Q515, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10049_WOLFSON_Q515);
    EQUIPITEM(DJG_10049_WOLFSON_Q515, 0x9b33);
    CREATEINVITEMS(DJG_10049_WOLFSON_Q515, 0x8650, 30);
    B_GIVENPCTALENTS(DJG_10049_WOLFSON_Q515);
    B_SETFIGHTSKILLS(DJG_10049_WOLFSON_Q515, 70);
    DAILY_ROUTINE = RTN_START_100490;
}

func void RTN_START_100490() {
    TA_AIMCROSSBOW_NOIQ(8, 0, 23, 0, "PART5_VOLFZACKE_10");
    TA_AIMCROSSBOW_NOIQ(23, 0, 8, 0, "PART5_VOLFZACKE_10");
}

func void RTN_TOT_100490() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, TOT);
    TA_STAYSTRAIGHT(23, 0, 8, 0, TOT);
}

