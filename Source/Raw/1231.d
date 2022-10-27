instance MIL_13870_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 0x362e;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_13870_MILITIA, 35);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13870_MILITIA, MALE, HUMHEADWITHOUTPONY, FACE_N_PATRON_21, 1, 0x8aa5);
    MDL_APPLYOVERLAYMDS(MIL_13870_MILITIA, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13870_MILITIA);
    B_GIVENPCTALENTS(MIL_13870_MILITIA);
    B_SETFIGHTSKILLS(MIL_13870_MILITIA, 50);
    DAILY_ROUTINE = RTN_START_13870;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_13870() {
    TA_CROSSBOWGUARD(7, 0, 8, 15, "PARTM2_CROSSBOW_GUARD_01");
    TA_CROSSBOWGUARD(8, 15, 9, 15, "PARTM2_CROSSBOW_GUARD_02");
    TA_CROSSBOWGUARD(9, 15, 10, 15, "PARTM2_CROSSBOW_GUARD_01");
    TA_CROSSBOWGUARD(10, 15, 11, 15, "PARTM2_CROSSBOW_GUARD_02");
    TA_CROSSBOWGUARD(11, 15, 12, 15, "PARTM2_CROSSBOW_GUARD_01");
    TA_CROSSBOWGUARD(12, 15, 13, 15, "PARTM2_CROSSBOW_GUARD_02");
    TA_CROSSBOWGUARD(13, 15, 14, 15, "PARTM2_CROSSBOW_GUARD_01");
    TA_CROSSBOWGUARD(14, 15, 15, 15, "PARTM2_CROSSBOW_GUARD_02");
    TA_CROSSBOWGUARD(15, 15, 16, 15, "PARTM2_CROSSBOW_GUARD_01");
    TA_CROSSBOWGUARD(16, 15, 17, 15, "PARTM2_CROSSBOW_GUARD_02");
    TA_CROSSBOWGUARD(17, 15, 18, 15, "PARTM2_CROSSBOW_GUARD_01");
    TA_CROSSBOWGUARD(18, 15, 19, 15, "PARTM2_CROSSBOW_GUARD_02");
    TA_CROSSBOWGUARD(19, 15, 20, 15, "PARTM2_CROSSBOW_GUARD_01");
    TA_CROSSBOWGUARD(20, 15, 21, 15, "PARTM2_CROSSBOW_GUARD_02");
    TA_CROSSBOWGUARD(21, 15, 22, 15, "PARTM2_CROSSBOW_GUARD_01");
    TA_SIT_CHAIR_DRINK(22, 15, 7, 0, "PARTM1_HOUSE_CHAIR_02");
}

