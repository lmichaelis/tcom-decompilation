instance MIL_4005_HARBGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 4005;
    VOICE = 59;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_4005_HARBGUARD, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(MIL_4005_HARBGUARD, 39564);
    MDL_SETVISUAL(MIL_4005_HARBGUARD, HUMANSSPEARMDS);
    MDL_SETVISUALBODY(MIL_4005_HARBGUARD, HUMBODYNAKED0, 2, 0, HUMHEADBALD, FACE_L_MILITIA16, 0, 35488);
    B_GIVENPCTALENTS(MIL_4005_HARBGUARD);
    B_SETFIGHTSKILLS(MIL_4005_HARBGUARD, 40);
    DAILY_ROUTINE = RTN_START_4005;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_4005() {
    TA_STAND_GUARDING2(8, 0, 10, 0, "HARBOUR_GUARD_05");
    TA_STAND_GUARDING2(10, 0, 12, 0, "HARBOUR_GUARD_08");
    TA_STAND_GUARDING2(12, 0, 14, 0, "HARBOUR_GUARD_05");
    TA_STAND_GUARDING2(14, 0, 16, 0, "HARBOUR_GUARD_08");
    TA_STAND_GUARDING2(16, 0, 18, 0, "HARBOUR_GUARD_05");
    TA_STAND_GUARDING2(18, 0, 22, 0, "HARBOUR_GUARD_08");
    TA_STAND_GUARDING2(22, 0, 8, 0, "HARBOUR_GUARD_05");
}

func void RTN_KQ404_CONCERT_4005() {
    TA_STAND_GUARDING2(8, 0, 10, 0, "HARBOUR_GUARD_05");
    TA_STAND_GUARDING2(10, 0, 12, 0, "HARBOUR_GUARD_13");
    TA_STAND_GUARDING2(12, 0, 14, 0, "HARBOUR_GUARD_05");
    TA_STAND_GUARDING2(14, 0, 16, 0, "HARBOUR_GUARD_13");
    TA_STAND_GUARDING2(16, 0, 18, 0, "HARBOUR_GUARD_05");
    TA_STAND_GUARDING2(18, 0, 22, 0, "HARBOUR_GUARD_13");
    TA_STAND_GUARDING2(22, 0, 8, 0, "HARBOUR_GUARD_05");
}

