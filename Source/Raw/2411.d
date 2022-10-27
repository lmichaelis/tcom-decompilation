instance NOV_208_NOVIZE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_NOVIZE;
    GUILD = GIL_NOV;
    ID = 208;
    VOICE = 66;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NOV_208_NOVIZE, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NOV_208_NOVIZE, MALE, HUMHEADWITHOUTPONY, FACE_N_NOVIZE_09, 1, 0x8b0a);
    MDL_APPLYOVERLAYMDS(NOV_208_NOVIZE, HUMANSMAGEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NOV_208_NOVIZE);
    B_GIVENPCTALENTS(NOV_208_NOVIZE);
    B_SETFIGHTSKILLS(NOV_208_NOVIZE, 40);
    DAILY_ROUTINE = RTN_START_208;
}

func void RTN_START_208() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART8_MONASTERY_SMALLTALK_02");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART8_MONASTERY_SMALLTALK_02");
}

func void RTN_SQ508_SMALLTALK_208() {
    TA_SMALLTALK(8, 0, 10, 0, "PART8_MONASTERY_SMALLTALK_02");
    TA_SMALLTALK(10, 0, 8, 0, "PART8_MONASTERY_SMALLTALK_02");
}

func void RTN_NORMALDAY_208() {
    TA_PLUNDER(7, 0, 10, 0, "PART8_MONASTERY_PLUNDER_01");
    TA_SMALLTALK(10, 0, 14, 0, "PART8_MONASTERY_SMALLTALK_04");
    TA_SIT_TURKISH(14, 0, 18, 0, "PART8_MONASTERY_PLUNDER_02");
    TA_PLUNDER(18, 0, 23, 0, "PART8_MONASTERY_PLUNDER_01");
    TA_SMALLTALK(23, 0, 7, 0, "PART8_MONASTERY_SMALLTALK_04");
}

func void RTN_SQ508_SEARCH_208() {
    TA_SEARCH_SCARED(7, 0, 10, 0, "PART8_SQ508_NOVIZE_02");
    TA_SEARCH_SCARED(10, 0, 7, 0, "PART8_SQ508_NOVIZE_02");
}

func void RTN_TOT_208() {
    TA_COOK_STOVE(6, 0, 22, 0, TOT);
    TA_COOK_STOVE(22, 0, 6, 0, TOT);
}

