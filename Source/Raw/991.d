prototype MST_DEFAULT_KM_GARGOYLE(C_NPC) {
    NAME[0] = NAME_GARGOYLE;
    GUILD = GIL_KM_GARGOYLE;
    AIVAR[43] = ID_GARGOYLE;
    LEVEL = 150;
    ATTRIBUTE[4] = 280;
    ATTRIBUTE[5] = 100;
    ATTRIBUTE[1] = 0x6a4;
    ATTRIBUTE[0] = 0x6a4;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 120;
    PROTECTION[2] = 140;
    PROTECTION[6] = 130;
    PROTECTION[3] = 500;
    PROTECTION[4] = IMMUNE;
    PROTECTION[5] = 90;
    DAMAGETYPE = DAM_BLUNT;
    FIGHT_TACTIC = FAI_KM_GARGOYLE;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = PERC_DIST_MONSTER_ACTIVE_MAX;
    AIVAR[26] = TRUE;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = FALSE;
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[32] = ONLYROUTINE;
}

func void B_SETVISUALS_KM_GARGOYLE() {
    MDL_SETVISUAL(SELF, "Gargoyle.mds");
    MDL_SETVISUALBODY(SELF, "Gar_Body", 1, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

func void B_SETVISUALS_KM_GARGOYLE_TEMPLE() {
    MDL_SETVISUAL(SELF, "Gargoyle.mds");
    MDL_SETVISUALBODY(SELF, "Gar_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

instance GARGOYLE(MST_DEFAULT_KM_GARGOYLE) {
    MST_DEFAULT_KM_GARGOYLE();
    B_SETVISUALS_KM_GARGOYLE();
    NPC_SETTOFISTMODE(GARGOYLE);
}

instance GARGOYLE_TEMPLE(MST_DEFAULT_KM_GARGOYLE) {
    MST_DEFAULT_KM_GARGOYLE();
    B_SETVISUALS_KM_GARGOYLE_TEMPLE();
    NPC_SETTOFISTMODE(GARGOYLE_TEMPLE);
}

instance GARGOYLE_STORY_01(MST_DEFAULT_KM_GARGOYLE) {
    MST_DEFAULT_KM_GARGOYLE();
    B_SETVISUALS_KM_GARGOYLE();
    NPC_SETTOFISTMODE(GARGOYLE_STORY_01);
}

instance GARGOYLE_STORY_02(MST_DEFAULT_KM_GARGOYLE) {
    MST_DEFAULT_KM_GARGOYLE();
    B_SETVISUALS_KM_GARGOYLE();
    NPC_SETTOFISTMODE(GARGOYLE_STORY_02);
}

instance GARGOYLE_STORY_03(MST_DEFAULT_KM_GARGOYLE) {
    MST_DEFAULT_KM_GARGOYLE();
    B_SETVISUALS_KM_GARGOYLE();
    NPC_SETTOFISTMODE(GARGOYLE_STORY_03);
}

instance GARGOYLE_CAMP_01(MST_DEFAULT_KM_GARGOYLE) {
    MST_DEFAULT_KM_GARGOYLE();
    ATTRIBUTE[4] = 125;
    B_SETVISUALS_KM_GARGOYLE();
    NPC_SETTOFISTMODE(GARGOYLE_CAMP_01);
}

instance GARGOYLE_CAMP_02(MST_DEFAULT_KM_GARGOYLE) {
    MST_DEFAULT_KM_GARGOYLE();
    ATTRIBUTE[4] = 125;
    B_SETVISUALS_KM_GARGOYLE();
    NPC_SETTOFISTMODE(GARGOYLE_CAMP_02);
}

instance GARGOYLE_CAMP_03(MST_DEFAULT_KM_GARGOYLE) {
    MST_DEFAULT_KM_GARGOYLE();
    ATTRIBUTE[4] = 125;
    B_SETVISUALS_KM_GARGOYLE();
    NPC_SETTOFISTMODE(GARGOYLE_CAMP_03);
}

instance GARGOYLE_CAMP_04(MST_DEFAULT_KM_GARGOYLE) {
    MST_DEFAULT_KM_GARGOYLE();
    ATTRIBUTE[4] = 125;
    B_SETVISUALS_KM_GARGOYLE();
    NPC_SETTOFISTMODE(GARGOYLE_CAMP_04);
}
