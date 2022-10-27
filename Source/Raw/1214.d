instance BDT_13485_MANHUNTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MANHUNTER;
    GUILD = GIL_NONE;
    ID = 0x34ad;
    VOICE = 60;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13485_MANHUNTER, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13485_MANHUNTER, MALE, HUMHEADLUTTERNEU, FACE_L_MANHUNTER57, BODYTEX_L, 0x8a97);
    MDL_APPLYOVERLAYMDS(BDT_13485_MANHUNTER, HUMANS1HST1);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13485_MANHUNTER);
    B_GIVENPCTALENTS(BDT_13485_MANHUNTER);
    B_SETFIGHTSKILLS(BDT_13485_MANHUNTER, 60);
    DAILY_ROUTINE = RTN_GUIDE_13485;
}

func void RTN_START_13485() {
    TA_STAND_WP(8, 0, 9, 0, RNG_TRAP41_WAYPOINT);
    TA_STAND_WP(9, 0, 8, 0, RNG_TRAP41_WAYPOINT);
}

func void RTN_GUIDE_13485() {
    TA_GUIDE_PLAYER_NOTALK(8, 0, 9, 0, "PARTM1_PATH_95");
    TA_GUIDE_PLAYER_NOTALK(9, 0, 8, 0, "PARTM1_PATH_95");
}

func void RTN_END_13485() {
    TA_STAND_WP(8, 0, 9, 0, "PARTM1_PATH_95");
    TA_STAND_WP(9, 0, 8, 0, "PARTM1_PATH_95");
}
