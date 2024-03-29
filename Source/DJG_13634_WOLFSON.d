instance DJG_13634_WOLFSON(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_DJG;
    ID = 13634;
    VOICE = 54;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_13634_WOLFSON, 45);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_13634_WOLFSON, MALE, HUMHEADBALD, FACE_L_WOLFSON90, 2, 35518);
    MDL_APPLYOVERLAYMDS(DJG_13634_WOLFSON, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_13634_WOLFSON);
    B_GIVENPCTALENTS(DJG_13634_WOLFSON);
    B_SETFIGHTSKILLS(DJG_13634_WOLFSON, 60);
    DAILY_ROUTINE = RTN_START_13634;
}

func void RTN_START_13634() {
    TA_SEARCH_ONLY(8, 0, 13, 0, "WOLFSDEN_SQ417_EVENT_03");
    TA_SEARCH_ONLY(13, 0, 8, 0, "WOLFSDEN_SQ417_EVENT_03");
}

func void RTN_TOT_13634() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}

