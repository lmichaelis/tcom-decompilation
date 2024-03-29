instance VLK_915_TOMAS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_TOMAS;
    GUILD = GIL_VLK;
    ID = 915;
    VOICE = 12;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_915_TOMAS, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_915_TOMAS, MALE, HUMHEADBALD, FACE_N_TOMAS, 1, 35547);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(VLK_915_TOMAS);
    B_SETFIGHTSKILLS(VLK_915_TOMAS, 30);
    DAILY_ROUTINE = RTN_START_915;
}

func void RTN_START_915() {
    TA_SIT_THRONE(6, 30, 7, 0, "PARTM2_TAVERN_THRONE_02");
    TA_BUTCHER(7, 0, 7, 42, "PARTM2_TAVERN_BUTCHER");
    TA_INN(7, 42, 23, 30, "PARTM2_TAVERN_TOMAS");
    TA_PLUNDER(23, 30, 0, 30, "PARTM2_TAVERN_PLUNDER_02");
    TA_SIT_THRONE(0, 30, 1, 25, "PARTM2_TAVERN_THRONE_02");
    TA_SLEEP(1, 25, 6, 30, "PARTM2_TAVERN_BED_02");
}

func void RTN_BEER_01_915() {
    TA_STAYSTRAIGHT_NOIQ(7, 0, 8, 0, "PARTM2_TAVERN_13");
    TA_STAYSTRAIGHT_NOIQ(8, 0, 7, 0, "PARTM2_TAVERN_13");
}

func void RTN_BEER_02_915() {
    TA_STAYSTRAIGHT_NOIQ(7, 0, 8, 0, "PARTM2_TAVERN_48");
    TA_STAYSTRAIGHT_NOIQ(8, 0, 7, 0, "PARTM2_TAVERN_48");
}

func void RTN_WAITBEER_915() {
    TA_STAND_ARMSCROSSED(7, 0, 8, 0, "PARTM2_TAVERN_21");
    TA_STAND_ARMSCROSSED(8, 0, 7, 0, "PARTM2_TAVERN_21");
}

