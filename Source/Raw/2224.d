instance NONE_6319_KARIN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_KARIN;
    GUILD = GIL_NONE;
    ID = 0x18af;
    VOICE = 39;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6319_KARIN, 13);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NONE_6319_KARIN, FEMALE, HUMHEADBABE3, FACE_WN_KARIN, 5, 0x8b19);
    MDL_APPLYOVERLAYMDS(NONE_6319_KARIN, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6319_KARIN);
    B_GIVENPCTALENTS(NONE_6319_KARIN);
    B_SETFIGHTSKILLS(NONE_6319_KARIN, 30);
    DAILY_ROUTINE = RTN_START_6319;
}

func void RTN_START_6319() {
    TA_PLAY_LUTE(15, 0, 16, 0, "PART4_FISHERMAN_FIREPLACE_05");
    TA_PLAY_LUTE(16, 0, 15, 0, "PART4_FISHERMAN_FIREPLACE_05");
}

func void RTN_NORMALDAY_6319() {
    TA_STAND_DRINKING(8, 0, 12, 0, "PART4_FISHERMAN_59");
    TA_SIT_CAMPFIRE(12, 0, 15, 0, "PART4_FISHERMAN_60");
    TA_PLAY_LUTE(15, 0, 19, 0, "PART4_FISHERMAN_FIREPLACE_05");
    TA_STAND_DRINKING(19, 0, 20, 0, "PART4_FISHERMAN_59");
    TA_STAND_EATING(20, 0, 21, 0, "PART4_FISHERMAN_59");
    TA_SIT_CAMPFIRE(21, 0, 8, 0, "PART4_FISHERMAN_60");
}

func void RTN_ORCHARD_6319() {
    TA_SIT_CAMPFIRE(12, 0, 13, 0, "PART9_PATH_35");
    TA_SIT_CAMPFIRE(13, 0, 12, 0, "PART9_PATH_35");
}

func void RTN_CUTSCENE_6319() {
    TA_STAYSTRAIGHT(10, 0, 12, 0, "PART9_CUTSCENE_KARIN");
    TA_STAYSTRAIGHT(12, 0, 10, 0, "PART9_CUTSCENE_KARIN");
}

func void RTN_AFTERCUTSCENE_6319() {
    TA_STAND_DRINKING(12, 0, 13, 0, "PART9_CUTSCENE_KARIN");
    TA_STAND_DRINKING(13, 0, 12, 0, "PART9_CUTSCENE_KARIN");
}

