instance MIL_4007_HARBGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 4007;
    VOICE = 28;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_4007_HARBGUARD, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(MIL_4007_HARBGUARD, 39564);
    MDL_SETVISUAL(MIL_4007_HARBGUARD, HUMANSSPEARMDS);
    MDL_SETVISUALBODY(MIL_4007_HARBGUARD, HUMBODYNAKED0, 1, 0, HUMHEADBALD, FACE_N_MILITIA14, 0, 35488);
    B_GIVENPCTALENTS(MIL_4007_HARBGUARD);
    B_SETFIGHTSKILLS(MIL_4007_HARBGUARD, 40);
    DAILY_ROUTINE = RTN_START_4007;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_4007() {
    TA_STAND_GUARDING2(7, 0, 10, 0, "PARTM1_GUARD_03");
    TA_STAND_GUARDING2(10, 0, 12, 0, "HARBOUR_GUARD_18");
    TA_STAND_GUARDING2(12, 0, 14, 0, "PARTM1_GUARD_04");
    TA_STAND_GUARDING2(14, 0, 16, 0, "PARTM1_GUARD_03");
    TA_STAND_GUARDING2(16, 0, 18, 0, "HARBOUR_GUARD_18");
    TA_STAND_GUARDING2(18, 0, 22, 0, "PARTM1_GUARD_04");
    TA_STAND_GUARDING2(22, 0, 7, 0, "PARTM1_GUARD_03");
}

func void RTN_TOT_4007() {
    TA_STAND_GUARDING2(7, 0, 10, 0, TOT2);
    TA_STAND_GUARDING2(10, 0, 7, 0, TOT2);
}

