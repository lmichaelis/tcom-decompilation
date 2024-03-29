instance VLK_11092_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_NONE;
    ID = 11092;
    VOICE = 64;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(VLK_11092_HOBO, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(VLK_11092_HOBO, HUMANSMDS);
    MDL_SETVISUALBODY(VLK_11092_HOBO, HUMBODYNAKED0, BODYTEX_N_HOMELESS02, 0, HUMHEADPONY, FACE_N_HOBO17, TEETHTEX_ROTTEN_V2, -(1));
    MDL_APPLYOVERLAYMDS(VLK_11092_HOBO, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11092_HOBO);
    B_GIVENPCTALENTS(VLK_11092_HOBO);
    B_SETFIGHTSKILLS(VLK_11092_HOBO, 35);
    B_CREATEAMBIENTINV(VLK_11092_HOBO);
    DAILY_ROUTINE = RTN_START_11092;
}

func void RTN_START_11092() {
    TA_HOBOATTACK(10, 0, 11, 0, "VILLAGE_PATH_196_EVENT02");
    TA_HOBOATTACK(11, 0, 10, 0, "VILLAGE_PATH_196_EVENT02");
}

func void RTN_AFTEREVENT_11092() {
    TA_STAND_WP(10, 0, 11, 0, "VILLAGE_PATH_196_EVENT02");
    TA_STAND_WP(11, 0, 10, 0, "VILLAGE_PATH_196_EVENT02");
}

func void RTN_TOT_11092() {
    TA_STAND_WP(10, 0, 11, 0, TOT2);
    TA_STAND_WP(11, 0, 10, 0, TOT2);
}

