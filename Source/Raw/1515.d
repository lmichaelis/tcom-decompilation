instance VLK_11302_BODYGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BODYGUARD;
    GUILD = GIL_NONE;
    ID = 0x2c26;
    VOICE = 72;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_11302_BODYGUARD, 34);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETNPCVISUAL(VLK_11302_BODYGUARD, MALE, HUMHEADFATBALD, FACE_L_BODYGUARD_06, 2, 0x8a46);
    MDL_APPLYOVERLAYMDS(VLK_11302_BODYGUARD, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11302_BODYGUARD);
    B_GIVENPCTALENTS(VLK_11302_BODYGUARD);
    B_SETFIGHTSKILLS(VLK_11302_BODYGUARD, 60);
    DAILY_ROUTINE = RTN_START_11302;
}

func void RTN_START_11302() {
    TA_STAND_WP(7, 0, 22, 0, RNG_TRAP17_WAYPOINT);
    TA_STAND_WP(22, 0, 7, 0, RNG_TRAP17_WAYPOINT);
}

func void RTN_AFTEREVENT_11302() {
    TA_STAND_WP(19, 0, 4, 0, RNG_TRAP17_WAYPOINT);
    TA_STAND_WP(4, 0, 19, 0, TOT2);
}

func void RTN_LEAN_11302() {
    TA_LEAN(7, 0, 22, 0, "PARTM5_PATH_122");
    TA_LEAN(22, 0, 7, 0, "PARTM5_PATH_122");
}

func void RTN_TOT2_11302() {
    TA_LEAN(7, 0, 22, 0, TOT2);
    TA_LEAN(22, 0, 7, 0, TOT2);
}

func void RTN_TOT_11302() {
    TA_STAND_WP(7, 0, 22, 0, TOT2);
    TA_STAND_WP(22, 0, 7, 0, TOT2);
}

