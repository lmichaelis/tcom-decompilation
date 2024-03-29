instance MIL_6501_ANGRYMOB_GUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 6501;
    VOICE = 28;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_6501_ANGRYMOB_GUARD, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(MIL_6501_ANGRYMOB_GUARD, 39564);
    MDL_SETVISUAL(MIL_6501_ANGRYMOB_GUARD, HUMANSSPEARMDS);
    MDL_SETVISUALBODY(MIL_6501_ANGRYMOB_GUARD, HUMBODYNAKED0, 0, 0, HUMHEADLUTTERNEU, FACE_P_ANGRYMOB_GUARD_05, 0, 35501);
    B_GIVENPCTALENTS(MIL_6501_ANGRYMOB_GUARD);
    B_SETFIGHTSKILLS(MIL_6501_ANGRYMOB_GUARD, 50);
    DAILY_ROUTINE = RTN_START_6501;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_6501() {
    TA_STAND_GUARDING2(7, 0, 22, 0, "PARTM5_ANGRYMOB_GUARD_05");
    TA_STAND_GUARDING2(22, 0, 7, 0, "PARTM5_ANGRYMOB_GUARD_05");
}

func void RTN_TOT_6501() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}

