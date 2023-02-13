instance MIL_6499_ANGRYMOB_GUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 6499;
    VOICE = 37;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_6499_ANGRYMOB_GUARD, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(MIL_6499_ANGRYMOB_GUARD, 39564);
    MDL_SETVISUAL(MIL_6499_ANGRYMOB_GUARD, HUMANSSPEARMDS);
    MDL_SETVISUALBODY(MIL_6499_ANGRYMOB_GUARD, HUMBODYNAKED0, 1, 0, HUMHEADFIGHTER, FACE_N_ANGRYMOB_GUARD_03, 0, 35501);
    B_GIVENPCTALENTS(MIL_6499_ANGRYMOB_GUARD);
    B_SETFIGHTSKILLS(MIL_6499_ANGRYMOB_GUARD, 50);
    DAILY_ROUTINE = RTN_START_6499;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_6499() {
    TA_STAND_GUARDING2(7, 0, 22, 0, "PARTM5_ANGRYMOB_GUARD_03");
    TA_STAND_GUARDING2(22, 0, 7, 0, "PARTM5_ANGRYMOB_GUARD_03");
}

func void RTN_TOT_6499() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}

