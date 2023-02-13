instance VLK_6357_NIVEL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_NIVEL;
    GUILD = GIL_VLK;
    ID = 6357;
    VOICE = 58;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6357_NIVEL, 22);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    EQUIPITEM(VLK_6357_NIVEL, 34015);
    B_CREATEAMBIENTINV(VLK_6357_NIVEL);
    B_SETNPCVISUAL(VLK_6357_NIVEL, MALE, HUMHEADFATBALD, FACE_L_WORKER09, 2, 35571);
    MDL_APPLYOVERLAYMDS(VLK_6357_NIVEL, HUMANSTIREDMDS);
    B_GIVENPCTALENTS(VLK_6357_NIVEL);
    B_SETFIGHTSKILLS(VLK_6357_NIVEL, 20);
    DAILY_ROUTINE = RTN_PRESTART_6357;
}

func void RTN_PRESTART_6357() {
    TA_STAYSTRAIGHT(8, 0, 10, 0, TOT);
    TA_STAYSTRAIGHT(10, 0, 8, 0, TOT);
}

func void RTN_START_6357() {
    TA_STAYSTRAIGHT(8, 0, 10, 0, "PARTM2_GATE_WORKER_01");
    TA_STAYSTRAIGHT(10, 0, 8, 0, "PARTM2_GATE_WORKER_01");
}

func void RTN_RUNMINE_6357() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, "PART3_PATH_133");
    TA_GUIDE_PLAYER(16, 0, 8, 0, "PART3_PATH_133");
}

func void RTN_WAITMINE_6357() {
    TA_STAYSTRAIGHT(8, 0, 18, 0, "PART3_PATH_132");
    TA_STAYSTRAIGHT(18, 0, 8, 0, "PART3_PATH_132");
}

func void RTN_GOLDMINE_6357() {
    TA_PICK_ORE(8, 0, 18, 0, "PART3_GOLDMINE_WORKER_01");
    TA_PICK_ORE(18, 0, 8, 0, "PART3_GOLDMINE_WORKER_01");
}

func void RTN_FIGHT_6357() {
    TA_STAYSTRAIGHT(8, 0, 18, 0, "PART3_GOLDMINE_02");
    TA_STAYSTRAIGHT(18, 0, 8, 0, "PART3_GOLDMINE_02");
}

func void RTN_AFTERFIGHT_6357() {
    TA_FOLLOW_PLAYER(8, 0, 18, 0, "PART3_GOLDMINE_02");
    TA_FOLLOW_PLAYER(18, 0, 8, 0, "PART3_GOLDMINE_02");
}

func void RTN_WEWON_6357() {
    TA_STAND_ARMSCROSSED(8, 0, 18, 0, "PARTM4_TAVERN_STAND_02");
    TA_STAND_ARMSCROSSED(18, 0, 8, 0, "PARTM4_TAVERN_STAND_02");
}

func void RTN_Q506_CAMP_6357() {
    TA_SMALLTALK(6, 0, 22, 0, "PART5_WORKERSCAMP_SMALLTALK_01");
    TA_SMALLTALK(22, 0, 6, 0, "PART5_WORKERSCAMP_SMALLTALK_01");
}

func void RTN_TOT_6357() {
    TA_SMALLTALK(6, 0, 22, 0, TOT);
    TA_SMALLTALK(22, 0, 6, 0, TOT);
}

