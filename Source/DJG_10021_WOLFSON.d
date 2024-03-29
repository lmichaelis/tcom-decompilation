instance DJG_10021_WOLFSON(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_NONE;
    ID = 10021;
    VOICE = 60;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10021_WOLFSON, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETNPCVISUAL(DJG_10021_WOLFSON, MALE, HUMHEADFATBALD, FACE_N_WOLFSON07, 1, 35520);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10021_WOLFSON);
    B_GIVENPCTALENTS(DJG_10021_WOLFSON);
    B_SETFIGHTSKILLS(DJG_10021_WOLFSON, 60);
    MDL_APPLYOVERLAYMDS(DJG_10021_WOLFSON, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(DJG_10021_WOLFSON, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(DJG_10021_WOLFSON, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(DJG_10021_WOLFSON, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_10021;
}

func void RTN_START_10021() {
    TA_OBSERVE(7, 0, 22, 0, "SILVERMINE_JONHELPER_01");
    TA_OBSERVE(22, 0, 7, 0, "SILVERMINE_JONHELPER_01");
}

func void RTN_QUEEN_10021() {
    TA_GUIDE_PLAYER(7, 0, 22, 0, "SILVERMINE_HELPER_01_QUEEN");
    TA_GUIDE_PLAYER(22, 0, 7, 0, "SILVERMINE_HELPER_01_QUEEN");
}

