instance NONE_6087_FISHERMAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_FISHERMAN;
    GUILD = GIL_NONE;
    ID = 6087;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_6087_FISHERMAN, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NONE_6087_FISHERMAN, MALE, HUMHEADBALD, FACE_L_FISHERMAN09, 2, 35395);
    MDL_APPLYOVERLAYMDS(NONE_6087_FISHERMAN, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6087_FISHERMAN);
    B_GIVENPCTALENTS(NONE_6087_FISHERMAN);
    B_SETFIGHTSKILLS(NONE_6087_FISHERMAN, 30);
    DAILY_ROUTINE = RTN_START_6087;
    AIVAR[74] = NPC_PART4_IAMFISHERMAN;
    AIVAR[70] = NPC_AMB_FISHERMANS;
}

func void RTN_START_6087() {
    TA_SIT_CHAIR(8, 0, 12, 0, "PART4_FISHERMAN_CHAIR_01");
    TA_STAND_EATING(12, 0, 15, 0, "PART4_FISHERMAN_FIREPLACE_03");
    TA_STAND_DRINKING(15, 0, 17, 0, "PART4_FISHERMAN_FIREPLACE_03");
    TA_SMOKE_JOINT(17, 0, 20, 0, "PART4_FISHERMAN_FIREPLACE_03");
    TA_SIT_CHAIR(20, 0, 8, 0, "PART4_FISHERMAN_CHAIR_01");
}

func void RTN_SQ123_WATCHCONTEST_6087() {
    TA_WATCHFIGHT_DUMB(8, 0, 15, 0, "PART4_FISHERMAN_SQ123_CUTSCENE_05");
    TA_WATCHFIGHT_DUMB(15, 0, 8, 0, "PART4_FISHERMAN_SQ123_CUTSCENE_05");
}

func void RTN_SQ123_STOPCONTEST_6087() {
    TA_STAYSTRAIGHT(8, 0, 15, 0, "PART4_FISHERMAN_SQ123_CUTSCENE_05");
    TA_STAYSTRAIGHT(15, 0, 8, 0, "PART4_FISHERMAN_SQ123_CUTSCENE_05");
}

func void RTN_SQ123_SVENWON_6087() {
    TA_SEARCH_SCARED(8, 0, 15, 0, "PART4_FISHERMAN_SQ123_DEAD_05");
    TA_SEARCH_SCARED(15, 0, 8, 0, "PART4_FISHERMAN_SQ123_DEAD_05");
}

func void RTN_SQ123_HAROLDWON_6087() {
    TA_WATCHFIGHT_DUMB(8, 0, 15, 0, "PART4_FISHERMAN_SQ123_DEAD_05");
    TA_WATCHFIGHT_DUMB(15, 0, 8, 0, "PART4_FISHERMAN_SQ123_DEAD_05");
}

