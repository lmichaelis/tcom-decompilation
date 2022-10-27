instance VLK_11094_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 0x2b56;
    VOICE = 49;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(VLK_11094_HOBO, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(VLK_11094_HOBO, HUMANSMDS);
    MDL_SETVISUALBODY(VLK_11094_HOBO, HUMBODYNAKED0, BODYTEX_L_HOMELESS02, 0, HUMHEADFATBALD, FACE_L_HOBO19, TEETHTEX_ROTTEN_V2, -(1));
    MDL_APPLYOVERLAYMDS(VLK_11094_HOBO, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11094_HOBO);
    B_GIVENPCTALENTS(VLK_11094_HOBO);
    B_SETFIGHTSKILLS(VLK_11094_HOBO, 35);
    B_CREATEAMBIENTINV(VLK_11094_HOBO);
    DAILY_ROUTINE = RTN_START_11094;
}

func void RTN_START_11094() {
    TA_HOBOATTACK(10, 0, 11, 0, "VILLAGE_PATH_196_EVENT04");
    TA_HOBOATTACK(11, 0, 10, 0, "VILLAGE_PATH_196_EVENT04");
}

func void RTN_AFTEREVENT_11094() {
    TA_STAND_WP(10, 0, 11, 0, "VILLAGE_PATH_196_EVENT04");
    TA_STAND_WP(11, 0, 10, 0, "VILLAGE_PATH_196_EVENT04");
}

func void RTN_TOT_11094() {
    TA_STAND_WP(10, 0, 11, 0, TOT2);
    TA_STAND_WP(11, 0, 10, 0, TOT2);
}

