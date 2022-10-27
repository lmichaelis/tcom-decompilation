instance MIL_13827_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 0x3603;
    VOICE = 59;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_13827_MILITIA, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13827_MILITIA, MALE, HUMHEADPONY, FACE_N_PATRON_10, 1, 0x8a9a);
    MDL_APPLYOVERLAYMDS(MIL_13827_MILITIA, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13827_MILITIA);
    B_GIVENPCTALENTS(MIL_13827_MILITIA);
    B_SETFIGHTSKILLS(MIL_13827_MILITIA, 40);
    DAILY_ROUTINE = RTN_START_13827;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_13827() {
    TA_STAND_GUARDING(5, 40, 20, 20, "PARTM3_STAND_12");
    TA_SIT_CHAIR_EAT(20, 20, 23, 10, "PARTM1_HOUSE_CHAIR_03");
    TA_WAITING(23, 10, 1, 10, "PARTM3_STAND_12");
    TA_SLEEP(1, 10, 5, 40, "PARTM3_BARRACK_HOUSE1_BED_02");
}

