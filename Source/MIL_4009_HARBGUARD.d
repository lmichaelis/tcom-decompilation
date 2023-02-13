instance MIL_4009_HARBGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 4009;
    VOICE = 49;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_4009_HARBGUARD, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(MIL_4009_HARBGUARD, 39564);
    MDL_SETVISUAL(MIL_4009_HARBGUARD, HUMANSSPEARMDS);
    MDL_SETVISUALBODY(MIL_4009_HARBGUARD, HUMBODYNAKED0, 0, 0, HUMHEADBALD, FACE_P_MILITIA03, 0, 35488);
    B_GIVENPCTALENTS(MIL_4009_HARBGUARD);
    B_SETFIGHTSKILLS(MIL_4009_HARBGUARD, 40);
    DAILY_ROUTINE = RTN_START_4009;
    AIVAR[74] = NPC_Q206_GUARDFINBARBODY;
}

func void RTN_START_4009() {
    TA_STAND_GUARDING2(7, 0, 10, 0, "HARBOUR_GUARD_20");
    TA_STAND_GUARDING2(10, 0, 12, 0, "HARBOUR_GUARD_19");
    TA_STAND_GUARDING2(12, 0, 14, 0, "HARBOUR_GUARD_12");
    TA_STAND_GUARDING2(14, 0, 16, 0, "HARBOUR_GUARD_19");
    TA_STAND_GUARDING2(16, 0, 18, 0, "HARBOUR_GUARD_20");
    TA_STAND_GUARDING2(18, 0, 22, 0, "HARBOUR_GUARD_12");
    TA_STAND_GUARDING2(22, 0, 7, 0, "HARBOUR_GUARD_19");
}

func void RTN_FINBARBODY_4009() {
    TA_GUARD_PASSAGE(8, 0, 10, 0, "HARBOUR_CUTSCENE_FINBAR_MILITIA_01");
    TA_GUARD_PASSAGE(10, 0, 8, 0, "HARBOUR_CUTSCENE_FINBAR_MILITIA_01");
}

