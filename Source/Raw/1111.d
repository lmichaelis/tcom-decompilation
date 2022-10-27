instance MIL_6308_GUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 0x18a4;
    VOICE = 49;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_6308_GUARD, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(MIL_6308_GUARD, 0x9a8c);
    MDL_SETVISUAL(MIL_6308_GUARD, HUMANSSPEARMDS);
    MDL_SETVISUALBODY(MIL_6308_GUARD, HUMBODYNAKED0, 2, 0, HUMHEADTHIEF, FACE_L_MILITIA23, 0, 0x8aa0);
    B_GIVENPCTALENTS(MIL_6308_GUARD);
    B_SETFIGHTSKILLS(MIL_6308_GUARD, 40);
    DAILY_ROUTINE = RTN_START_6308;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_6308() {
    TA_STAND_GUARDING2(14, 10, 12, 55, "PARTM1_GUARD_01");
    TA_STAND_GUARDING2(12, 55, 14, 10, "PARTM8_GUARD_02");
}

