instance MIL_4034_OLDCITYGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILITIA_OLDCITYGUARD;
    GUILD = GIL_MIL;
    ID = 4034;
    VOICE = 49;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_4034_OLDCITYGUARD, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(MIL_4034_OLDCITYGUARD, 39564);
    MDL_SETVISUAL(MIL_4034_OLDCITYGUARD, HUMANSSPEARMDS);
    MDL_SETVISUALBODY(MIL_4034_OLDCITYGUARD, HUMBODYNAKED0, 1, 3, HUMHEADBALD, FACE_B_MILITIA28, 0, 35501);
    B_GIVENPCTALENTS(MIL_4034_OLDCITYGUARD);
    B_SETFIGHTSKILLS(MIL_4034_OLDCITYGUARD, 40);
    DAILY_ROUTINE = RTN_START_4034;
    AIVAR[74] = NPC_CITY_IAMOLDCITYGUARD;
}

func void RTN_START_4034() {
    TA_GUARD_PASSAGE(8, 0, 22, 0, "PARTM5_OLDCITYGUARD_04");
    TA_GUARD_PASSAGE(22, 0, 8, 0, "PARTM5_OLDCITYGUARD_04");
}

