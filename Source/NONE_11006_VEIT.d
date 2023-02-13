instance NONE_11006_VEIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_VEIT;
    GUILD = GIL_NONE;
    ID = 11006;
    VOICE = 46;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_11006_VEIT, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NONE_11006_VEIT, MALE, HUMHEADTHIEF, FACE_N_VEIT, 1, 35547);
    B_CREATEWEAPONINV();
    MDL_APPLYOVERLAYMDS(NONE_11006_VEIT, HUMANSARROGANCEMDS);
    B_GIVENPCTALENTS(NONE_11006_VEIT);
    B_SETFIGHTSKILLS(NONE_11006_VEIT, 30);
    DAILY_ROUTINE = RTN_TOT_11006;
}

func void RTN_START_11006() {
    TA_SIT_BENCH_DRINK(8, 0, 10, 0, "VILLAGE_TRAVELER_01");
    TA_SIT_BENCH(10, 0, 13, 0, "VILLAGE_TRAVELER_01");
    TA_SMALLTALK(13, 0, 15, 0, "VILLAGE_SMALLTALK_09");
    TA_SMALLTALK(15, 0, 16, 0, "VILLAGE_PLACE_23");
    TA_SMOKE_WATERPIPE(16, 0, 20, 0, "VILLAGE_PUB_SMOKEPIPE02");
    TA_SLEEP(20, 0, 8, 0, "VILLAGE_PUB_ROOM03_BED01");
}

func void RTN_CITY_11006() {
    TA_STAND_ARMSCROSSED(7, 30, 14, 0, "SLUMS_VEIT");
    TA_CHECKLIST(14, 0, 18, 0, "SLUMS_VEIT");
    TA_SIT_THRONE_NEW(18, 0, 23, 0, "HARBOUR_DARKSECRETS_08");
    TA_SIT_THRONE(23, 0, 7, 30, "HARBOUR_TAVERN_THRONE_01");
}

func void RTN_SQ416_VILLAGE_INN_11006() {
    TA_SIT_BENCH_DRINK(8, 0, 10, 0, "VILLAGE_TRAVELER_01");
    TA_SIT_BENCH(10, 0, 13, 0, "VILLAGE_TRAVELER_01");
    TA_SMALLTALK(13, 0, 15, 0, "VILLAGE_SMALLTALK_09");
    TA_SMALLTALK(15, 0, 16, 0, "VILLAGE_PLACE_23");
    TA_SIT_CHAIR_EAT(16, 0, 8, 0, "VILLAGE_PUB_06");
}

func void RTN_TOT_11006() {
    TA_STAYSTRAIGHT(8, 0, 11, 0, TOT);
    TA_STAYSTRAIGHT(11, 0, 8, 0, TOT);
}

