instance NONE_6252_FREDRIK(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_PETRA;
    GUILD = GIL_NONE;
    ID = 6252;
    VOICE = 40;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6252_FREDRIK, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NONE_6252_FREDRIK, FEMALE, HUMHEADIVY, FACE_WN_PETRA, 5, 35610);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6252_FREDRIK);
    MDL_APPLYOVERLAYMDS(NONE_6252_FREDRIK, HUMANSARROGANCEMDS);
    B_GIVENPCTALENTS(NONE_6252_FREDRIK);
    B_SETFIGHTSKILLS(NONE_6252_FREDRIK, 30);
    DAILY_ROUTINE = RTN_START_6252;
}

func void RTN_START_6252() {
    TA_SIT_CHAIR_DRINK(8, 0, 10, 0, "VILLAGE_PUB_100");
    TA_READ(10, 0, 12, 0, "VILLAGE_PUB_ENTRY");
    TA_STAND_EATING(12, 0, 12, 45, "VILLAGE_PATH_88");
    TA_STAND_DRINKING(12, 45, 13, 30, "VILLAGE_PATH_88");
    TA_STAND_ARMSCROSSED(13, 30, 14, 0, "VILLAGE_PATH_88");
    TA_SIT_CHAIR_DRINK(14, 0, 20, 0, "VILLAGE_PUB_100");
    TA_STAND_ARMSCROSSED(20, 0, 20, 30, "VILLAGE_PATH_88");
    TA_STAND_DRINKING(20, 30, 21, 0, "VILLAGE_PATH_88");
    TA_SIT_CHAIR_EAT(21, 0, 22, 0, "VILLAGE_PUB_100");
    TA_SIT_THRONE_READING(22, 0, 22, 30, "VILLAGE_PUB_THRONE03");
    TA_SLEEP(22, 30, 8, 0, "VILLAGE_PUB_ROOM01_PATH03");
}

func void RTN_GQ001_6252() {
    TA_LEAN(8, 0, 10, 0, "VILLAGE_PATH_142");
    TA_LEAN(10, 0, 8, 0, "VILLAGE_PATH_142");
}

func void RTN_TAVERN_6252() {
    TA_SIT_CHAIR_DRINK(8, 0, 10, 0, "VILLAGE_PUB_100");
    TA_SIT_CHAIR_EAT(10, 0, 12, 0, "VILLAGE_PUB_100");
    TA_SIT_CHAIR_DRINK(12, 0, 14, 0, "VILLAGE_PUB_100");
    TA_SIT_CHAIR_EAT(14, 0, 16, 0, "VILLAGE_PUB_100");
    TA_SIT_CHAIR_DRINK(16, 0, 18, 0, "VILLAGE_PUB_100");
    TA_SIT_CHAIR_EAT(18, 0, 20, 0, "VILLAGE_PUB_100");
    TA_SIT_CHAIR_DRINK(20, 0, 22, 0, "VILLAGE_PUB_100");
    TA_SIT_THRONE_READING(22, 0, 22, 30, "VILLAGE_PUB_THRONE03");
    TA_SLEEP(22, 30, 8, 0, "VILLAGE_PUB_ROOM01_PATH03");
}

func void RTN_ANGRY_6252() {
    TA_STAND_ARMSCROSSED(8, 0, 9, 0, "VILLAGE_PATH_88");
    TA_STAND_ARMSCROSSED(9, 0, 8, 0, "VILLAGE_PATH_88");
}

func void RTN_TOT_6252() {
    TA_STAND_ARMSCROSSED(8, 0, 9, 0, TOT);
    TA_STAND_ARMSCROSSED(9, 0, 8, 0, TOT);
}

