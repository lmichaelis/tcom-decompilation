instance MIL_4030_CITYGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 4030;
    VOICE = 60;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_4030_CITYGUARD, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(MIL_4030_CITYGUARD, 39564);
    MDL_SETVISUAL(MIL_4030_CITYGUARD, HUMANSSPEARMDS);
    MDL_SETVISUALBODY(MIL_4030_CITYGUARD, HUMBODYNAKED0, 1, 0, HUMHEADPONY, FACE_N_MILITIA11, 0, 35488);
    B_GIVENPCTALENTS(MIL_4030_CITYGUARD);
    B_SETFIGHTSKILLS(MIL_4030_CITYGUARD, 40);
    DAILY_ROUTINE = RTN_START_4030;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_4030() {
    TA_STAND_GUARDING2(8, 0, 20, 0, "PART2_BRIDGE_GUARD_01");
    TA_STAND_GUARDING2(20, 0, 8, 0, "PART2_BRIDGE_GUARD_01");
}
