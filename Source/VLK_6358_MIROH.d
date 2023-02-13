instance VLK_6358_MIROH(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_MIROH;
    GUILD = GIL_VLK;
    ID = 6358;
    VOICE = 72;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6358_MIROH, 23);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    EQUIPITEM(VLK_6358_MIROH, 34015);
    B_CREATEAMBIENTINV(VLK_6358_MIROH);
    B_SETNPCVISUAL(VLK_6358_MIROH, MALE, HUMHEADPSIONIC, FACE_B_MIROH, 3, 35578);
    MDL_APPLYOVERLAYMDS(VLK_6358_MIROH, HUMANSTIREDMDS);
    B_GIVENPCTALENTS(VLK_6358_MIROH);
    B_SETFIGHTSKILLS(VLK_6358_MIROH, 20);
    DAILY_ROUTINE = RTN_PRESTART_6358;
}

func void RTN_PRESTART_6358() {
    TA_STAYSTRAIGHT(8, 0, 10, 0, TOT);
    TA_STAYSTRAIGHT(10, 0, 8, 0, TOT);
}

func void RTN_START_6358() {
    TA_STAYSTRAIGHT(8, 0, 10, 0, "PARTM2_GATE_WORKER_02");
    TA_STAYSTRAIGHT(10, 0, 8, 0, "PARTM2_GATE_WORKER_02");
}

func void RTN_RUNMINE_6358() {
    TA_GUIDE_PLAYER(8, 0, 16, 0, "PART3_PATH_133");
    TA_GUIDE_PLAYER(16, 0, 8, 0, "PART3_PATH_133");
}

func void RTN_WAITMINE_6358() {
    TA_STAYSTRAIGHT(8, 0, 18, 0, "PART3_PATH_131");
    TA_STAYSTRAIGHT(18, 0, 8, 0, "PART3_PATH_131");
}

func void RTN_GOLDMINE_6358() {
    TA_PICK_ORE(8, 0, 18, 0, "PART3_GOLDMINE_WORKER_03");
    TA_PICK_ORE(18, 0, 8, 0, "PART3_GOLDMINE_WORKER_03");
}

func void RTN_FIGHT_6358() {
    TA_STAYSTRAIGHT(8, 0, 18, 0, "PART3_GOLDMINE_02");
    TA_STAYSTRAIGHT(18, 0, 8, 0, "PART3_GOLDMINE_02");
}

func void RTN_AFTERFIGHT_6358() {
    TA_FOLLOW_PLAYER(8, 0, 18, 0, "PART3_GOLDMINE_02");
    TA_FOLLOW_PLAYER(18, 0, 8, 0, "PART3_GOLDMINE_02");
}

func void RTN_TAVERN_6358() {
    TA_STAND_DRINKING(8, 0, 16, 0, "PARTM4_TAVERN_19");
    TA_STAND_DRINKING(16, 0, 8, 0, "PARTM4_TAVERN_19");
}

func void RTN_Q506_CAMP_6358() {
    TA_SMALLTALK(6, 0, 22, 0, "PART5_WORKERSCAMP_SMALLTALK_02");
    TA_SMALLTALK(22, 0, 6, 0, "PART5_WORKERSCAMP_SMALLTALK_02");
}

func void RTN_TOT_6358() {
    TA_SMALLTALK(6, 0, 22, 0, TOT);
    TA_SMALLTALK(22, 0, 6, 0, TOT);
}

