prototype MST_DEFAULT_SCAVENGER(C_NPC) {
    NAME[0] = NAME_SCAVENGER;
    GUILD = GIL_SCAVENGER;
    AIVAR[43] = ID_SCAVENGER;
    LEVEL = 7;
    ATTRIBUTE[4] = 20;
    ATTRIBUTE[5] = 35;
    ATTRIBUTE[1] = 40;
    ATTRIBUTE[0] = 40;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 20;
    PROTECTION[2] = 20;
    PROTECTION[6] = 5;
    PROTECTION[3] = 20;
    PROTECTION[4] = 20;
    PROTECTION[5] = 0;
    DAMAGETYPE = DAM_EDGE;
    FIGHT_TACTIC = FAI_SCAVENGER;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = PERC_DIST_MONSTER_ACTIVE_MAX;
    AIVAR[26] = TRUE;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = TRUE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[30] = 22;
    AIVAR[31] = 6;
    AIVAR[36] = 6;
    AIVAR[37] = 22;
}

prototype MST_DEFAULT_YSCAVENGER(C_NPC) {
    NAME[0] = NAME_YOUNGSCAVENGER;
    GUILD = GIL_SCAVENGER;
    AIVAR[43] = ID_SCAVENGER;
    LEVEL = 3;
    ATTRIBUTE[4] = 10;
    ATTRIBUTE[5] = 10;
    ATTRIBUTE[1] = 40;
    ATTRIBUTE[0] = 40;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 0;
    PROTECTION[2] = 0;
    PROTECTION[6] = 0;
    PROTECTION[3] = 0;
    PROTECTION[4] = 0;
    PROTECTION[5] = 0;
    DAMAGETYPE = DAM_EDGE;
    FIGHT_TACTIC = FAI_SCAVENGER;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = PERC_DIST_MONSTER_ACTIVE_MAX;
    AIVAR[26] = TRUE;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = TRUE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[30] = 22;
    AIVAR[31] = 6;
    AIVAR[36] = 6;
    AIVAR[37] = 22;
    MDL_SETMODELSCALE(SELF, 1063675494, 1063675494, 1063675494);
}

prototype MST_DEFAULT_FIRESCAVENGER(C_NPC) {
    NAME[0] = NAME_FIRESCAVENGER;
    GUILD = GIL_SCAVENGER;
    AIVAR[43] = ID_SCAVENGER;
    LEVEL = 5;
    ATTRIBUTE[4] = 10;
    ATTRIBUTE[5] = 10;
    ATTRIBUTE[1] = 40;
    ATTRIBUTE[0] = 40;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 0;
    PROTECTION[2] = 0;
    PROTECTION[6] = 0;
    PROTECTION[3] = 0;
    PROTECTION[4] = 0;
    PROTECTION[5] = 0;
    DAMAGETYPE = DAM_FIRE;
    FIGHT_TACTIC = FAI_SCAVENGER;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = PERC_DIST_MONSTER_ACTIVE_MAX;
    AIVAR[26] = TRUE;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = TRUE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[30] = 22;
    AIVAR[31] = 6;
    AIVAR[36] = 6;
    AIVAR[37] = 22;
    MDL_SETMODELSCALE(SELF, 1063675494, 1063675494, 1063675494);
}

prototype MST_DEFAULT_FIRESCAVENGER2(C_NPC) {
    NAME[0] = NAME_FIRESCAVENGER2;
    GUILD = GIL_SCAVENGER;
    AIVAR[43] = ID_SCAVENGER_FIRE;
    LEVEL = 25;
    ATTRIBUTE[4] = 50;
    ATTRIBUTE[5] = 10;
    ATTRIBUTE[1] = 200;
    ATTRIBUTE[0] = 200;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 70;
    PROTECTION[2] = 70;
    PROTECTION[6] = 25;
    PROTECTION[3] = 200;
    PROTECTION[4] = 10;
    PROTECTION[5] = 30;
    DAMAGETYPE = DAM_FIRE;
    FIGHT_TACTIC = FAI_SCAVENGER;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = PERC_DIST_MONSTER_ACTIVE_MAX;
    AIVAR[26] = TRUE;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = TRUE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[30] = 22;
    AIVAR[31] = 6;
    AIVAR[36] = 6;
    AIVAR[37] = 22;
    MDL_SETMODELSCALE(SELF, 1063675494, 1063675494, 1063675494);
}

func void B_SETVISUALS_YSCAVENGER() {
    MDL_SETVISUAL(SELF, SCAVENGERMDS);
    MDL_SETVISUALBODY(SELF, "Sca_Body", 1, 1, "", DEFAULT, DEFAULT, -(1));
}

func void B_SETVISUALS_SCAVENGER() {
    MDL_SETVISUAL(SELF, SCAVENGERMDS);
    MDL_SETVISUALBODY(SELF, "Sca_Body", 0, 0, "", DEFAULT, DEFAULT, -(1));
}

func void B_SETVISUALS_SCAVENGER2() {
    MDL_SETVISUAL(SELF, SCAVENGERMDS);
    MDL_SETVISUALBODY(SELF, "YSca_Body", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

func void B_SETVISUALS_SCAVENGERMARVIN() {
    MDL_SETVISUAL(SELF, SCAVENGERMDS);
    MDL_SETVISUALBODY(SELF, "Sca_Body_Marvin", 0, 0, "", DEFAULT, DEFAULT, -(1));
}

instance SCAVENGER(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER);
    CREATEINVITEMS(SCAVENGER, 36427, 1);
}

instance YSCAVENGER(MST_DEFAULT_YSCAVENGER) {
    MST_DEFAULT_YSCAVENGER();
    B_SETVISUALS_YSCAVENGER();
    NPC_SETTOFISTMODE(YSCAVENGER);
    CREATEINVITEMS(YSCAVENGER, 36427, 1);
}

instance SCAVENGER_MARVIN(MST_DEFAULT_YSCAVENGER) {
    MST_DEFAULT_YSCAVENGER();
    ATTRIBUTE[1] = MARVINTRANSFORMHP;
    ATTRIBUTE[0] = MARVINTRANSFORMHP;
    B_SETVISUALS_SCAVENGERMARVIN();
    NPC_SETTOFISTMODE(SCAVENGER_MARVIN);
}

instance SCAVENGER_BALD(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_BALD);
    CREATEINVITEMS(SCAVENGER_BALD, 36427, 1);
}

instance SCAVENGER_FIRE(MST_DEFAULT_FIRESCAVENGER) {
    MST_DEFAULT_FIRESCAVENGER();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_FIRE);
}

instance SCAVENGER_FIRE2(MST_DEFAULT_FIRESCAVENGER2) {
    MST_DEFAULT_FIRESCAVENGER2();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_FIRE2);
}

instance SCAVENGER_BODOWIN_01(MST_DEFAULT_FIRESCAVENGER) {
    MST_DEFAULT_FIRESCAVENGER();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_BODOWIN_01);
}

instance SCAVENGER_BODOWIN_02(MST_DEFAULT_FIRESCAVENGER) {
    MST_DEFAULT_FIRESCAVENGER();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_BODOWIN_02);
}

instance SCAVENGER_BODOWIN_03(MST_DEFAULT_FIRESCAVENGER) {
    MST_DEFAULT_FIRESCAVENGER();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_BODOWIN_03);
}

instance SCAVENGER_QA202_01(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    ID = 3500;
    DAILY_ROUTINE = RTN_START_3500;
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_QA202_01);
    CREATEINVITEMS(SCAVENGER_QA202_01, 36427, 1);
    AIVAR[26] = FALSE;
}

func void RTN_START_3500() {
    TA_RAMHAATTACK(8, 0, 22, 0, TOT);
    TA_RAMHAATTACK(22, 0, 8, 0, TOT);
}

func void RTN_TELEPORT_3500() {
    TA_RAMHAATTACK(8, 0, 22, 0, "PART7_PATH_182");
    TA_RAMHAATTACK(22, 0, 8, 0, "PART7_PATH_182");
}

instance SCAVENGER_QA202_02(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    ID = 3501;
    DAILY_ROUTINE = RTN_START_3501;
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_QA202_02);
    CREATEINVITEMS(SCAVENGER_QA202_02, 36427, 1);
    AIVAR[26] = FALSE;
}

func void RTN_START_3501() {
    TA_RAMHAATTACK(8, 0, 22, 0, TOT);
    TA_RAMHAATTACK(22, 0, 8, 0, TOT);
}

func void RTN_TELEPORT_3501() {
    TA_RAMHAATTACK(8, 0, 22, 0, "PART7_PATH_182");
    TA_RAMHAATTACK(22, 0, 8, 0, "PART7_PATH_182");
}

instance SCAVENGER_QA202_03(MST_DEFAULT_YSCAVENGER) {
    MST_DEFAULT_YSCAVENGER();
    ID = 3502;
    DAILY_ROUTINE = RTN_START_3502;
    B_SETVISUALS_YSCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_QA202_03);
    CREATEINVITEMS(SCAVENGER_QA202_03, 36427, 1);
    AIVAR[26] = FALSE;
}

func void RTN_START_3502() {
    TA_RAMHAATTACK(8, 0, 22, 0, TOT);
    TA_RAMHAATTACK(22, 0, 8, 0, TOT);
}

func void RTN_TELEPORT_3502() {
    TA_RAMHAATTACK(8, 0, 22, 0, "PART7_PATH_183");
    TA_RAMHAATTACK(22, 0, 8, 0, "PART7_PATH_183");
}

instance SCAVENGER_QA301(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_QA301);
    CREATEINVITEMS(SCAVENGER_QA301, 36427, 1);
}

instance SCAVENGER_Q601_01(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_Q601_01);
    CREATEINVITEMS(SCAVENGER_Q601_01, 36427, 1);
}

instance SCAVENGER_Q601_02(MST_DEFAULT_YSCAVENGER) {
    MST_DEFAULT_YSCAVENGER();
    B_SETVISUALS_YSCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_Q601_02);
    CREATEINVITEMS(SCAVENGER_Q601_02, 36427, 1);
}

instance SCAVENGER_Q601_03(MST_DEFAULT_YSCAVENGER) {
    MST_DEFAULT_YSCAVENGER();
    B_SETVISUALS_YSCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_Q601_03);
    CREATEINVITEMS(SCAVENGER_Q601_03, 36427, 1);
}

instance SCAVENGER_Q601_04(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_Q601_04);
    CREATEINVITEMS(SCAVENGER_Q601_04, 36427, 1);
}

instance SCAVENGER_Q601_05(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_Q601_05);
    CREATEINVITEMS(SCAVENGER_Q601_05, 36427, 1);
}

instance SCAVENGER_SQ509_CITY_01(MST_DEFAULT_FIRESCAVENGER2) {
    MST_DEFAULT_FIRESCAVENGER2();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_SQ509_CITY_01);
}

instance SCAVENGER_SQ509_CITY_02(MST_DEFAULT_FIRESCAVENGER2) {
    MST_DEFAULT_FIRESCAVENGER2();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_SQ509_CITY_02);
}

instance SCAVENGER_SQ509_CITY_03(MST_DEFAULT_FIRESCAVENGER2) {
    MST_DEFAULT_FIRESCAVENGER2();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_SQ509_CITY_03);
}

instance SCAVENGER_SQ509_VILLAGE_01(MST_DEFAULT_FIRESCAVENGER2) {
    MST_DEFAULT_FIRESCAVENGER2();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_SQ509_VILLAGE_01);
}

instance SCAVENGER_SQ509_VILLAGE_02(MST_DEFAULT_FIRESCAVENGER2) {
    MST_DEFAULT_FIRESCAVENGER2();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_SQ509_VILLAGE_02);
}

instance SCAVENGER_SQ509_VILLAGE_03(MST_DEFAULT_FIRESCAVENGER2) {
    MST_DEFAULT_FIRESCAVENGER2();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_SQ509_VILLAGE_03);
}

instance SCAVENGER_SQ509_VINEYARD_01(MST_DEFAULT_FIRESCAVENGER2) {
    MST_DEFAULT_FIRESCAVENGER2();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_SQ509_VINEYARD_01);
}

instance SCAVENGER_SQ509_VINEYARD_02(MST_DEFAULT_FIRESCAVENGER2) {
    MST_DEFAULT_FIRESCAVENGER2();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_SQ509_VINEYARD_02);
}

instance SCAVENGER_SQ509_VINEYARD_03(MST_DEFAULT_FIRESCAVENGER2) {
    MST_DEFAULT_FIRESCAVENGER2();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_SQ509_VINEYARD_03);
}

instance SCAVENGER_SQ509_BODOWIN_01(MST_DEFAULT_FIRESCAVENGER2) {
    MST_DEFAULT_FIRESCAVENGER2();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_SQ509_BODOWIN_01);
}

instance SCAVENGER_SQ509_BODOWIN_02(MST_DEFAULT_FIRESCAVENGER2) {
    MST_DEFAULT_FIRESCAVENGER2();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_SQ509_BODOWIN_02);
}

instance SCAVENGER_SQ509_BODOWIN_03(MST_DEFAULT_FIRESCAVENGER2) {
    MST_DEFAULT_FIRESCAVENGER2();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_SQ509_BODOWIN_03);
}

instance SCAVENGER_SQ509_BODOWIN_04(MST_DEFAULT_FIRESCAVENGER2) {
    MST_DEFAULT_FIRESCAVENGER2();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_SQ509_BODOWIN_04);
}

instance SCAVENGER_SQ509_BODOWIN_05(MST_DEFAULT_FIRESCAVENGER2) {
    MST_DEFAULT_FIRESCAVENGER2();
    B_SETVISUALS_SCAVENGER2();
    NPC_SETTOFISTMODE(SCAVENGER_SQ509_BODOWIN_05);
}

instance SCAVENGER_Q406_01(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_Q406_01);
    CREATEINVITEMS(SCAVENGER_Q406_01, 36427, 1);
}

instance SCAVENGER_Q406_02(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_Q406_02);
    CREATEINVITEMS(SCAVENGER_Q406_02, 36427, 1);
}

instance SCAVENGER_Q406_03(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_Q406_03);
    CREATEINVITEMS(SCAVENGER_Q406_03, 36427, 1);
}

instance SCAVENGER_SQ116_01(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_SQ116_01);
    CREATEINVITEMS(SCAVENGER_SQ116_01, 36427, 1);
}

instance SCAVENGER_SQ116_02(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_SQ116_02);
    CREATEINVITEMS(SCAVENGER_SQ116_02, 36427, 1);
}

instance SCAVENGER_SQ116_03(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_SQ116_03);
    CREATEINVITEMS(SCAVENGER_SQ116_03, 36427, 1);
}

instance SCAVENGER_SQ116_04(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_SQ116_04);
    CREATEINVITEMS(SCAVENGER_SQ116_04, 36427, 1);
}

instance SCAVENGER_SQ116_05(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_SQ116_05);
    CREATEINVITEMS(SCAVENGER_SQ116_05, 36427, 1);
}

instance SCAVENGER_BEFORE_CQ002_01(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_BEFORE_CQ002_01);
    CREATEINVITEMS(SCAVENGER_BEFORE_CQ002_01, 36427, 1);
}

instance SCAVENGER_BEFORE_CQ002_02(MST_DEFAULT_YSCAVENGER) {
    MST_DEFAULT_YSCAVENGER();
    B_SETVISUALS_YSCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_BEFORE_CQ002_02);
    CREATEINVITEMS(SCAVENGER_BEFORE_CQ002_02, 36427, 1);
}

instance SCAVENGER_BEFORE_CQ002_03(MST_DEFAULT_YSCAVENGER) {
    MST_DEFAULT_YSCAVENGER();
    B_SETVISUALS_YSCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_BEFORE_CQ002_03);
    CREATEINVITEMS(SCAVENGER_BEFORE_CQ002_03, 36427, 1);
}

instance SCAVENGER_BEFORE_CQ002_04(MST_DEFAULT_YSCAVENGER) {
    MST_DEFAULT_YSCAVENGER();
    B_SETVISUALS_YSCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_BEFORE_CQ002_04);
    CREATEINVITEMS(SCAVENGER_BEFORE_CQ002_04, 36427, 1);
}

instance SCAVENGER_BEFORE_CQ002_05(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_BEFORE_CQ002_05);
    CREATEINVITEMS(SCAVENGER_BEFORE_CQ002_05, 36427, 1);
}

instance SCAVENGER_BEFORE_CQ002_06(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_BEFORE_CQ002_06);
    CREATEINVITEMS(SCAVENGER_BEFORE_CQ002_06, 36427, 1);
}

instance SCAVENGER_BEFORE_CQ002_07(MST_DEFAULT_SCAVENGER) {
    MST_DEFAULT_SCAVENGER();
    B_SETVISUALS_SCAVENGER();
    NPC_SETTOFISTMODE(SCAVENGER_BEFORE_CQ002_07);
    CREATEINVITEMS(SCAVENGER_BEFORE_CQ002_07, 36427, 1);
}

