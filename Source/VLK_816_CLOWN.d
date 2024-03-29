instance VLK_816_CLOWN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_CLOWN;
    GUILD = GIL_NONE;
    ID = 816;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(VLK_816_CLOWN, 15);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_816_CLOWN, MALE, HUMHEADFATBALD, FACE_N_CLOWN, BODYTEX_N, 35544);
    MDL_APPLYOVERLAYMDS(VLK_816_CLOWN, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_816_CLOWN);
    B_GIVENPCTALENTS(VLK_816_CLOWN);
    B_SETFIGHTSKILLS(VLK_816_CLOWN, 30);
    DAILY_ROUTINE = RTN_START_816;
    AIVAR[75] = WALKMODE_WALK;
}

func void RTN_START_816() {
    TA_CLOWN(7, 0, 0, 0, "PARTM5_PATH_CLOWN_02");
    TA_CLOWN(0, 0, 7, 0, TOT2);
}

func void RTN_WAITING_816() {
    TA_STAND_WP(7, 0, 8, 0, "PARTM5_PATH_CLOWN_01");
    TA_STAND_WP(8, 0, 9, 0, "PARTM5_PATH_CLOWN_02");
    TA_STAND_WP(9, 0, 10, 0, "PARTM5_PATH_CLOWN_03");
    TA_STAND_WP(10, 0, 11, 0, "PARTM5_PATH_CLOWN_04");
    TA_STAND_WP(11, 0, 12, 0, "PARTM5_PATH_CLOWN_05");
    TA_STAND_WP(12, 0, 13, 0, "PARTM5_PATH_CLOWN_06");
    TA_STAND_WP(13, 0, 14, 0, "PARTM5_PATH_CLOWN_07");
    TA_STAND_WP(14, 0, 15, 0, "PARTM5_PATH_CLOWN_08");
    TA_STAND_WP(15, 0, 16, 0, "PARTM5_PATH_CLOWN_01");
    TA_STAND_WP(16, 0, 17, 0, "PARTM5_PATH_CLOWN_02");
    TA_STAND_WP(17, 0, 18, 0, "PARTM5_PATH_CLOWN_03");
    TA_STAND_WP(18, 0, 20, 0, "PARTM5_PATH_CLOWN_04");
    TA_STAND_WP(20, 0, 21, 0, "PARTM5_PATH_CLOWN_05");
    TA_STAND_WP(21, 0, 22, 0, "PARTM5_PATH_CLOWN_06");
    TA_STAND_WP(22, 0, 23, 0, "PARTM5_PATH_CLOWN_07");
    TA_STAND_WP(23, 0, 0, 0, "PARTM5_PATH_CLOWN_08");
    TA_STAND_WP(0, 0, 7, 0, TOT2);
}

func void RTN_TOT_816() {
    TA_STAND_WP(7, 0, 0, 0, TOT2);
    TA_STAND_WP(0, 0, 7, 0, TOT2);
}

