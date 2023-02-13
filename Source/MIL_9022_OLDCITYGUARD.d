instance MIL_9022_OLDCITYGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BODYGUARD;
    GUILD = GIL_MIL;
    ID = 9022;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_9022_OLDCITYGUARD, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_9022_OLDCITYGUARD, MALE, HUMHEADBALD, FACE_N_PATRON_78, 1, 35501);
    MDL_APPLYOVERLAYMDS(MIL_9022_OLDCITYGUARD, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_9022_OLDCITYGUARD);
    B_GIVENPCTALENTS(MIL_9022_OLDCITYGUARD);
    B_SETFIGHTSKILLS(MIL_9022_OLDCITYGUARD, 40);
    DAILY_ROUTINE = RTN_START_9022;
    AIVAR[74] = NPC_CITY_IAMFROMOLDCITY;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_9022() {
    TA_STAND_GUARDING(11, 0, 11, 40, "PARTM5_HOUSE_KLAUDIOS_GUARD_04");
    TA_STAND_ARMSCROSSED(11, 40, 12, 20, "PARTM5_HOUSE_KLAUDIOS_GUARD_03");
    TA_STAND_ARMSCROSSED(12, 20, 13, 0, "PARTM5_HOUSE_KLAUDIOS_GUARD_02");
    TA_STAND_GUARDING(13, 0, 13, 40, "PARTM5_HOUSE_KLAUDIOS_GUARD_03");
    TA_STAND_GUARDING(13, 40, 14, 20, "PARTM5_HOUSE_KLAUDIOS_GUARD_04");
    TA_STAND_ARMSCROSSED(14, 20, 15, 0, "PARTM5_HOUSE_KLAUDIOS_GUARD_01");
    TA_STAND_GUARDING(15, 0, 15, 40, "PARTM5_HOUSE_KLAUDIOS_GUARD_02");
    TA_STAND_GUARDING(15, 40, 16, 20, "PARTM5_HOUSE_KLAUDIOS_GUARD_04");
    TA_STAND_ARMSCROSSED(16, 20, 17, 0, "PARTM5_HOUSE_KLAUDIOS_GUARD_02");
    TA_STAND_GUARDING(17, 0, 17, 30, "PARTM5_HOUSE_KLAUDIOS_GUARD_04");
    TA_STAND_ARMSCROSSED(17, 30, 18, 0, "PARTM5_HOUSE_KLAUDIOS_GUARD_04");
    TA_STAND_GUARDING(18, 0, 18, 40, "PARTM5_HOUSE_KLAUDIOS_GUARD_03");
    TA_STAND_ARMSCROSSED(18, 40, 19, 20, "PARTM5_HOUSE_KLAUDIOS_GUARD_02");
    TA_STAND_ARMSCROSSED(19, 20, 20, 0, "PARTM5_HOUSE_KLAUDIOS_GUARD_04");
    TA_STAND_GUARDING(20, 0, 20, 40, "PARTM5_HOUSE_KLAUDIOS_GUARD_03");
    TA_STAND_GUARDING(20, 40, 21, 20, "PARTM5_HOUSE_KLAUDIOS_GUARD_02");
    TA_STAND_ARMSCROSSED(21, 20, 22, 0, "PARTM5_HOUSE_KLAUDIOS_GUARD_01");
    TA_STAND_ARMSCROSSED(22, 0, 22, 40, "PARTM5_HOUSE_KLAUDIOS_GUARD_03");
    TA_STAND_ARMSCROSSED(22, 40, 23, 20, "PARTM5_HOUSE_KLAUDIOS_GUARD_02");
    TA_STAND_GUARDING(23, 20, 0, 0, "PARTM5_HOUSE_KLAUDIOS_GUARD_03");
    TA_STAND_GUARDING(0, 0, 0, 40, "PARTM5_HOUSE_KLAUDIOS_GUARD_04");
    TA_STAND_ARMSCROSSED(0, 40, 1, 20, "PARTM5_HOUSE_KLAUDIOS_GUARD_04");
    TA_STAND_GUARDING(1, 20, 2, 0, "PARTM5_HOUSE_KLAUDIOS_GUARD_04");
    TA_STAND_ARMSCROSSED(2, 0, 2, 40, "PARTM5_HOUSE_KLAUDIOS_GUARD_03");
    TA_STAND_GUARDING(2, 40, 3, 20, "PARTM5_HOUSE_KLAUDIOS_GUARD_02");
    TA_STAND_GUARDING(3, 20, 5, 30, "PARTM5_HOUSE_KLAUDIOS_GUARD_01");
    TA_STAND_GUARDING(5, 30, 6, 0, "PARTM5_HOUSE_KLAUDIOS_GUARD_04");
    TA_STAND_ARMSCROSSED(6, 0, 6, 30, "PARTM5_HOUSE_KLAUDIOS_GUARD_04");
    TA_STAND_GUARDING(6, 30, 7, 20, "PARTM5_HOUSE_KLAUDIOS_GUARD_04");
    TA_STAND_ARMSCROSSED(7, 20, 8, 0, "PARTM5_HOUSE_KLAUDIOS_GUARD_03");
    TA_STAND_ARMSCROSSED(8, 0, 8, 40, "PARTM5_HOUSE_KLAUDIOS_GUARD_02");
    TA_STAND_GUARDING(8, 40, 9, 20, "PARTM5_HOUSE_KLAUDIOS_GUARD_03");
    TA_STAND_GUARDING(9, 20, 10, 0, "PARTM5_HOUSE_KLAUDIOS_GUARD_04");
    TA_STAND_GUARDING(10, 0, 10, 30, "PARTM5_HOUSE_KLAUDIOS_GUARD_04");
    TA_STAND_ARMSCROSSED(10, 30, 11, 0, "PARTM5_HOUSE_KLAUDIOS_GUARD_04");
}

