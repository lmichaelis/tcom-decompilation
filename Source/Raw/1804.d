instance VLK_6282_RUUD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_RUUD;
    GUILD = GIL_VLK;
    ID = 0x188a;
    VOICE = 68;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6282_RUUD, 10);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_6282_RUUD, MALE, HUMHEADFATBALD, FACE_N_RUUD, 1, 0x8ae9);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6282_RUUD);
    B_GIVENPCTALENTS(VLK_6282_RUUD);
    B_SETFIGHTSKILLS(VLK_6282_RUUD, 29);
    DAILY_ROUTINE = RTN_START_6282;
}

func void RTN_START_6282() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "HARBOUR_CQ006_RUUD");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "HARBOUR_CQ006_RUUD");
}

func void RTN_NORMALDAY_6282() {
    TA_SAW(8, 0, 13, 20, "HARBOUR_SAW_RUUD");
    TA_STAND_EATING(13, 20, 14, 5, "HARBOUR_CQ006_RUUD");
    TA_SAW(14, 5, 22, 0, "HARBOUR_SAW_RUUD");
    TA_STAND_DRINKING(22, 0, 8, 0, "HARBOUR_CQ006_RUUD");
}

func void RTN_CQ006_HARBOUR_6282() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "HARBOUR_PATH_400");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "HARBOUR_PATH_400");
}

func void RTN_CQ006_FLEE_6282() {
    TA_FLEE_BROKENARM(8, 0, 22, 0, "PARTM2_PATH_30");
    TA_FLEE_BROKENARM(22, 0, 8, 0, "PARTM2_PATH_30");
}

func void RTN_KQ406_STOP_6282() {
    TA_STAND_DRINKING(8, 0, 22, 0, "HARBOUR_CQ006_RUUD");
    TA_STAND_DRINKING(22, 0, 8, 0, "HARBOUR_CQ006_RUUD");
}

func void RTN_KQ406_ANGRYMOB_6282() {
    TA_ANGRYMOB_KQ406(8, 0, 22, 0, "HARBOUR_KQ406_ANGRYMOB_10");
    TA_ANGRYMOB_KQ406(22, 0, 8, 0, "HARBOUR_KQ406_ANGRYMOB_10");
}

func void RTN_Q506_CAMP_6282() {
    TA_WAITING(8, 0, 22, 0, "PART5_WORKERSCAMP_STAND_02");
    TA_WAITING(22, 0, 8, 0, "PART5_WORKERSCAMP_STAND_02");
}

func void RTN_TOT_6282() {
    TA_WAITING(8, 0, 22, 0, TOT);
    TA_WAITING(22, 0, 8, 0, TOT);
}

