prototype MST_DEFAULT_ORCWARRIOR(C_NPC) {
    NAME[0] = NAME_ORCWARRIOR;
    GUILD = GIL_ORC;
    AIVAR[43] = ID_ORCWARRIOR;
    VOICE = 0;
    LEVEL = 40;
    ATTRIBUTE[4] = 185;
    ATTRIBUTE[5] = 150;
    ATTRIBUTE[1] = 450;
    ATTRIBUTE[0] = 450;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 140;
    PROTECTION[2] = 140;
    PROTECTION[6] = 150;
    PROTECTION[3] = 70;
    PROTECTION[4] = 150;
    PROTECTION[5] = 80;
    HITCHANCE[1] = 60;
    HITCHANCE[2] = 60;
    HITCHANCE[3] = 60;
    HITCHANCE[4] = 60;
    DAMAGETYPE = DAM_EDGE;
    FIGHT_TACTIC = FAI_ORC;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = PERC_DIST_ORC_ACTIVE_MAX;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = FALSE;
}

func void B_SETVISUALS_ORCWARRIOR() {
    MDL_SETVISUAL(SELF, ORCMDS);
    MDL_SETVISUALBODY(SELF, "Orc_BodyWarrior", DEFAULT, DEFAULT, "Orc_HeadWarrior", DEFAULT, DEFAULT, -(1));
}

func void B_SETVISUALS_ORCWARRIOR01_KM() {
    MDL_SETVISUAL(SELF, ORCMDS);
    MDL_SETVISUALBODY(SELF, "Orc_BodyWarrior", DEFAULT, DEFAULT, "HUM_KM_ORC_HEAD", FACE_ORC_WARRIOR01, DEFAULT, -(1));
}

func void B_SETVISUALS_ORCWARRIOR02_KM() {
    MDL_SETVISUAL(SELF, ORCMDS);
    MDL_SETVISUALBODY(SELF, "Orc_BodyWarrior", DEFAULT, DEFAULT, "HUM_KM_ORC_HEAD", FACE_ORC_WARRIOR02, DEFAULT, -(1));
}

func void B_SETVISUALS_ORCWARRIOR03_KM() {
    MDL_SETVISUAL(SELF, ORCMDS);
    MDL_SETVISUALBODY(SELF, "Orc_BodyWarrior", DEFAULT, DEFAULT, "HUM_KM_ORC_HEAD", FACE_ORC_WARRIOR03, DEFAULT, -(1));
}

instance ORCWARRIORKM_ROAM01(MST_DEFAULT_ORCWARRIOR) {
    MST_DEFAULT_ORCWARRIOR();
    B_SETVISUALS_ORCWARRIOR01_KM();
    EQUIPITEM(ORCWARRIORKM_ROAM01, 0x84ee);
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[34] = ONLYROUTINE;
}

instance ORCWARRIORKM_ROAM02(MST_DEFAULT_ORCWARRIOR) {
    MST_DEFAULT_ORCWARRIOR();
    B_SETVISUALS_ORCWARRIOR02_KM();
    EQUIPITEM(ORCWARRIORKM_ROAM02, 0x84ee);
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[34] = ONLYROUTINE;
}

instance ORCWARRIORKM_ROAM03(MST_DEFAULT_ORCWARRIOR) {
    MST_DEFAULT_ORCWARRIOR();
    B_SETVISUALS_ORCWARRIOR03_KM();
    EQUIPITEM(ORCWARRIORKM_ROAM03, 0x84ee);
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[34] = ONLYROUTINE;
}

instance ORCWARRIOR_ROAM(MST_DEFAULT_ORCWARRIOR) {
    MST_DEFAULT_ORCWARRIOR();
    B_SETVISUALS_ORCWARRIOR();
    EQUIPITEM(ORCWARRIOR_ROAM, 0x84ee);
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[34] = ONLYROUTINE;
}

instance ORCWARRIOR_REST(MST_DEFAULT_ORCWARRIOR) {
    MST_DEFAULT_ORCWARRIOR();
    B_SETVISUALS_ORCWARRIOR();
    EQUIPITEM(ORCWARRIOR_REST, 0x84ed);
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[32] = ONLYROUTINE;
}

instance ORCWARRIOR_SIT(MST_DEFAULT_ORCWARRIOR) {
    MST_DEFAULT_ORCWARRIOR();
    B_SETVISUALS_ORCWARRIOR();
    EQUIPITEM(ORCWARRIOR_SIT, 0x9b04);
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[40] = ONLYROUTINE;
}

instance ORCWARRIOR_ROAM_Q403_01(MST_DEFAULT_ORCWARRIOR) {
    MST_DEFAULT_ORCWARRIOR();
    B_SETVISUALS_ORCWARRIOR();
    EQUIPITEM(ORCWARRIOR_ROAM_Q403_01, 0x9b04);
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[34] = ONLYROUTINE;
}

