instance NOV_205_NOVIZE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_NOVIZE;
    GUILD = GIL_NOV;
    ID = 205;
    VOICE = 6;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NOV_205_NOVIZE, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NOV_205_NOVIZE, MALE, HUMHEADPONY, FACE_N_NOVIZE_08, 1, 35594);
    MDL_APPLYOVERLAYMDS(NOV_205_NOVIZE, HUMANSMAGEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NOV_205_NOVIZE);
    B_GIVENPCTALENTS(NOV_205_NOVIZE);
    B_SETFIGHTSKILLS(NOV_205_NOVIZE, 40);
    DAILY_ROUTINE = RTN_START_205;
}

func void RTN_START_205() {
    TA_STAYSTRAIGHT(8, 0, 10, 0, "PART8_MONASTERY_SMALLTALK_01");
    TA_STAYSTRAIGHT(10, 0, 8, 0, "PART8_MONASTERY_SMALLTALK_01");
}

func void RTN_SQ508_SMALLTALK_205() {
    TA_SMALLTALK(8, 0, 10, 0, "PART8_MONASTERY_SMALLTALK_01");
    TA_SMALLTALK(10, 0, 8, 0, "PART8_MONASTERY_SMALLTALK_01");
}

func void RTN_NORMALDAY_205() {
    TA_STAND_SWEEPING(7, 0, 10, 0, "PART8_MONASTERY_SWEEP_01");
    TA_SMALLTALK(10, 0, 14, 0, "PART8_MONASTERY_SMALLTALK_03");
    TA_PLUNDER(14, 0, 18, 0, "PART8_MONASTERY_PLUNDER_02");
    TA_STAND_SWEEPING(18, 0, 23, 0, "PART8_MONASTERY_SWEEP_01");
    TA_SMALLTALK(23, 0, 7, 0, "PART8_MONASTERY_SMALLTALK_03");
}

func void RTN_SQ508_SEARCH_205() {
    TA_SEARCH_SCARED(7, 0, 10, 0, "PART8_SQ508_NOVIZE_01");
    TA_SEARCH_SCARED(10, 0, 7, 0, "PART8_SQ508_NOVIZE_01");
}

func void RTN_TOT_205() {
    TA_COOK_STOVE(6, 0, 22, 0, TOT);
    TA_COOK_STOVE(22, 0, 6, 0, TOT);
}

