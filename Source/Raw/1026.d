prototype MST_DEFAULT_WARAN(C_NPC) {
    NAME[0] = NAME_WARAN;
    GUILD = GIL_WARAN;
    AIVAR[43] = ID_WARAN;
    LEVEL = 12;
    ATTRIBUTE[4] = 60;
    ATTRIBUTE[5] = 60;
    ATTRIBUTE[1] = 120;
    ATTRIBUTE[0] = 120;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 50;
    PROTECTION[2] = 50;
    PROTECTION[6] = 60;
    PROTECTION[3] = 60;
    PROTECTION[4] = 40;
    PROTECTION[5] = 10;
    DAMAGETYPE = DAM_EDGE;
    FIGHT_TACTIC = FAI_WARAN;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = PERC_DIST_MONSTER_ACTIVE_MAX;
    AIVAR[26] = TRUE;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = TRUE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[34] = ONLYROUTINE;
}

func void B_SETVISUALS_WARAN() {
    MDL_SETVISUAL(SELF, WARANMDS);
    MDL_SETVISUALBODY(SELF, "War_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

func void B_SETVISUALS_WARANMARVIN() {
    MDL_SETVISUAL(SELF, WARANMDS);
    MDL_SETVISUALBODY(SELF, "WAR_Marvin_BODY", 0, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

func void B_SETVISUALS_SWAMPWARAN() {
    MDL_SETVISUAL(SELF, WARANMDS);
    MDL_SETVISUALBODY(SELF, "War_Swamp_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

instance WARAN(MST_DEFAULT_WARAN) {
    MST_DEFAULT_WARAN();
    B_SETVISUALS_WARAN();
    NPC_SETTOFISTMODE(WARAN);
}

instance WARAN_MARVIN(MST_DEFAULT_WARAN) {
    MST_DEFAULT_WARAN();
    ATTRIBUTE[1] = MARVINTRANSFORMHP;
    ATTRIBUTE[0] = MARVINTRANSFORMHP;
    B_SETVISUALS_WARANMARVIN();
    NPC_SETTOFISTMODE(WARAN_MARVIN);
}

instance SWAMPWARAN(MST_DEFAULT_WARAN) {
    MST_DEFAULT_WARAN();
    NAME[0] = NAME_SWAMPWARAN;
    LEVEL = 25;
    AIVAR[43] = ID_SWAMPWARAN;
    ATTRIBUTE[4] = 100;
    ATTRIBUTE[5] = 115;
    ATTRIBUTE[1] = 220;
    ATTRIBUTE[0] = 220;
    PROTECTION[1] = 100;
    PROTECTION[2] = 100;
    PROTECTION[6] = 110;
    PROTECTION[3] = 60;
    PROTECTION[4] = 50;
    PROTECTION[5] = 30;
    B_SETVISUALS_SWAMPWARAN();
    NPC_SETTOFISTMODE(SWAMPWARAN);
}

instance WARAN_PARTM8_01(MST_DEFAULT_WARAN) {
    MST_DEFAULT_WARAN();
    B_SETVISUALS_WARAN();
    NPC_SETTOFISTMODE(WARAN_PARTM8_01);
}

instance WARAN_PARTM8_02(MST_DEFAULT_WARAN) {
    MST_DEFAULT_WARAN();
    B_SETVISUALS_WARAN();
    NPC_SETTOFISTMODE(WARAN_PARTM8_02);
}

instance WARAN_PARTM8_03(MST_DEFAULT_WARAN) {
    MST_DEFAULT_WARAN();
    B_SETVISUALS_WARAN();
    NPC_SETTOFISTMODE(WARAN_PARTM8_03);
}

instance WARAN_GQ001(MST_DEFAULT_WARAN) {
    MST_DEFAULT_WARAN();
    B_SETVISUALS_WARAN();
    NPC_SETTOFISTMODE(WARAN_GQ001);
}
