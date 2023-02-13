instance MIL_6353_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 6353;
    VOICE = 64;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_6353_MILITIA, 25);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_6353_MILITIA, MALE, HUMHEADBALD, FACE_N_MILITIA25, 1, 35488);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_6353_MILITIA);
    B_GIVENPCTALENTS(MIL_6353_MILITIA);
    B_SETFIGHTSKILLS(MIL_6353_MILITIA, 40);
    DAILY_ROUTINE = RTN_START_6353;
}

func void RTN_START_6353() {
    TA_SMALLTALK(7, 30, 10, 0, "PART4_FISHERMAN_MIL_SMALLTALK_01");
    TA_SMALLTALK(10, 0, 7, 30, "PART4_FISHERMAN_MIL_SMALLTALK_01");
}

func void RTN_PLUNDERSVEN_6353() {
    TA_PLUNDER(7, 30, 10, 0, "PART4_FISHERMAN_98");
    TA_PLUNDER(10, 0, 7, 30, "PART4_FISHERMAN_98");
}

func void RTN_PLUNDERROY_6353() {
    TA_PLUNDER(7, 30, 10, 0, "PART4_FISHERMAN_101");
    TA_PLUNDER(10, 0, 7, 30, "PART4_FISHERMAN_101");
}

func void RTN_FARMPART6_6353() {
    TA_SMALLTALK(7, 30, 10, 0, "PART6_SMALLTALK_MIL_01");
    TA_SMALLTALK(10, 0, 7, 30, "PART6_SMALLTALK_MIL_01");
}

func void RTN_CITY_6353() {
    TA_STAND_GUARDING(7, 30, 10, 0, "PARTM4_GUARD_04");
    TA_STAND_GUARDING(10, 0, 7, 30, "PARTM4_GUARD_04");
}

func void RTN_TOT_6353() {
    TA_STAND_GUARDING(7, 30, 10, 0, TOT);
    TA_STAND_GUARDING(10, 0, 7, 30, TOT);
}

