instance DJG_10040_WOLFSON_Q515(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_DJG;
    ID = 0x2738;
    VOICE = 3;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10040_WOLFSON_Q515, 50);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[15] = TRUE;
    B_SETNPCVISUAL(DJG_10040_WOLFSON_Q515, MALE, HUMHEADBALD, FACE_N_WOLFSON10, 1, 0x8abe);
    MDL_APPLYOVERLAYMDS(DJG_10040_WOLFSON_Q515, HUMANSMILITIAMDS);
    EQUIPITEM(DJG_10040_WOLFSON_Q515, 0x9b33);
    CREATEINVITEMS(DJG_10040_WOLFSON_Q515, 0x8650, 30);
    B_CREATEAMBIENTINV(DJG_10040_WOLFSON_Q515);
    B_GIVENPCTALENTS(DJG_10040_WOLFSON_Q515);
    B_SETFIGHTSKILLS(DJG_10040_WOLFSON_Q515, 80);
    DAILY_ROUTINE = RTN_START_10040;
}

func void RTN_START_10040() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, "PART5_VOLFZACKE_Q515_CROSSBOW");
    TA_STAYSTRAIGHT(23, 0, 8, 0, "PART5_VOLFZACKE_Q515_CROSSBOW");
}

func void RTN_TOT_10040() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, TOT);
    TA_STAYSTRAIGHT(23, 0, 8, 0, TOT);
}

