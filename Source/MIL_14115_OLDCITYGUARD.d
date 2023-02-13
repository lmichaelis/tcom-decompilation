instance MIL_14115_OLDCITYGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 14115;
    VOICE = 72;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_14115_OLDCITYGUARD, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(MIL_14115_OLDCITYGUARD, 39564);
    MDL_SETVISUAL(MIL_14115_OLDCITYGUARD, HUMANSSPEARMDS);
    MDL_SETVISUALBODY(MIL_14115_OLDCITYGUARD, HUMBODYNAKED0, 1, 0, HUMHEADBALD, FACE_N_PATRON_35, 0, 35501);
    B_GIVENPCTALENTS(MIL_14115_OLDCITYGUARD);
    B_SETFIGHTSKILLS(MIL_14115_OLDCITYGUARD, 40);
    DAILY_ROUTINE = RTN_START_14115;
    AIVAR[74] = NPC_CITY_IAMFROMOLDCITY;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_14115() {
    TA_STAND_GUARDING2(8, 0, 9, 0, "PARTM5_GUARD_13");
    TA_STAND_GUARDING2(9, 0, 8, 0, "PARTM5_GUARD_13");
}

func void RTN_TOT_14115() {
    TA_STAND_GUARDING2(8, 13, 9, 13, TOT);
    TA_STAND_GUARDING2(9, 13, 8, 13, TOT);
}

