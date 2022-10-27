instance MIL_6393_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 0x18f9;
    VOICE = 6;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_6393_MILITIA, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(MIL_6393_MILITIA, 0x9a8c);
    MDL_SETVISUAL(MIL_6393_MILITIA, HUMANSSPEARMDS);
    MDL_SETVISUALBODY(MIL_6393_MILITIA, HUMBODYNAKED0, 1, 0, HUMHEADPONY, FACE_N_MILITIA31, 0, 0x8aa0);
    B_GIVENPCTALENTS(MIL_6393_MILITIA);
    B_SETFIGHTSKILLS(MIL_6393_MILITIA, 40);
    DAILY_ROUTINE = RTN_START_6393;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_6393() {
    TA_STAND_GUARDING2(8, 0, 18, 0, "PARTM4_GUARD_06");
    TA_STAND_GUARDING2(18, 0, 8, 0, "PARTM4_GUARD_06");
}

func void RTN_ATTEMPT_6393() {
    TA_STAND_GUARDING2(8, 0, 18, 0, "PARTM4_PATH_39");
    TA_STAND_GUARDING2(18, 0, 8, 0, "PARTM4_PATH_39");
}
