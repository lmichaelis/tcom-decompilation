instance NONE_6334_HERDIS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_HERDIS;
    GUILD = GIL_NONE;
    ID = 6334;
    VOICE = 40;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6334_HERDIS, 12);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NONE_6334_HERDIS, FEMALE, HUMHEADBABE2, FACE_WL_HERDIS, 6, 33902);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6334_HERDIS);
    B_GIVENPCTALENTS(NONE_6334_HERDIS);
    B_SETFIGHTSKILLS(NONE_6334_HERDIS, 25);
    DAILY_ROUTINE = RTN_START_6334;
    SENSES_RANGE = 0;
}

func void RTN_START_6334() {
    TA_SEARCH_SCARED_DIALOGUE(1, 0, 6, 0, "PART14_ISLAND_HERDIS");
    TA_SEARCH_SCARED_DIALOGUE(6, 0, 1, 0, "PART14_ISLAND_HERDIS");
}

func void RTN_ISLAND_6334() {
    TA_SIT_DEPRESSION(7, 0, 14, 0, "PART14_ISLAND_CAMPFIRE_01");
    TA_STAND_EATING(14, 0, 17, 0, "PART14_ISLAND_HERDIS");
    TA_SIT_DEPRESSION(17, 0, 22, 0, "PART14_ISLAND_CAMPFIRE_01");
    TA_SLEEP(22, 0, 7, 0, "PART14_ISLAND_SLEEP_01");
}

func void RTN_TOPIRATES_6334() {
    TA_BREATH(1, 0, 6, 0, "PART17_Q305_GIRL_01");
    TA_BREATH(6, 0, 1, 0, "PART17_Q305_GIRL_01");
}

func void RTN_TOFARM_6334() {
    TA_BREATH(1, 0, 6, 0, "PART15_GIRLS_01");
    TA_BREATH(6, 0, 1, 0, "PART15_GIRLS_01");
}

func void RTN_PIRATES_6334() {
    TA_SMALLTALK(1, 0, 6, 0, "PART17_BAR_SMALLTALK_01");
    TA_SMALLTALK(6, 0, 1, 0, "PART17_BAR_SMALLTALK_01");
}

func void RTN_FARM_6334() {
    TA_SMALLTALK(1, 0, 6, 0, "PART15_VINEYARD_SMALLTALK_01");
    TA_SMALLTALK(6, 0, 1, 0, "PART15_VINEYARD_SMALLTALK_01");
}

func void RTN_HAVEN_6334() {
    TA_DANCE(1, 0, 6, 0, "P17_HAVEN_BAR_IN_22");
    TA_DANCE(6, 0, 1, 0, "P17_HAVEN_BAR_IN_22");
}

func void RTN_TAVERN_WAIT_6334() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, "PART17_BAR_07");
    TA_STAYSTRAIGHT(6, 0, 1, 0, "PART17_BAR_07");
}

func void RTN_TAVERN_6334() {
    TA_Q307_BENDRINK(0, 0, 1, 0, PART17_BAR_WAITRESS_04);
    TA_Q307_BENDRINK(1, 0, 0, 0, PART17_BAR_WAITRESS_04);
}

func void RTN_TAVERN_V2_6334() {
    TA_STAYSTRAIGHT(0, 0, 1, 0, PART17_BAR_WAITRESS_02);
    TA_STAYSTRAIGHT(1, 0, 0, 0, PART17_BAR_WAITRESS_02);
}

func void RTN_TOT_6334() {
    TA_SMALLTALK(1, 0, 6, 0, TOT);
    TA_SMALLTALK(6, 0, 1, 0, TOT);
}

