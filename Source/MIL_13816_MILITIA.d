instance MIL_13816_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 13816;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_13816_MILITIA, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13816_MILITIA, MALE, HUMHEADFATBALD, FACE_P_PATRON_04, 0, 35482);
    MDL_APPLYOVERLAYMDS(MIL_13816_MILITIA, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13816_MILITIA);
    B_GIVENPCTALENTS(MIL_13816_MILITIA);
    B_SETFIGHTSKILLS(MIL_13816_MILITIA, 40);
    DAILY_ROUTINE = RTN_START_13816;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_13816() {
    TA_CHECKSWD(5, 50, 20, 30, "PART1_BARRACK_ENTRY_01");
    TA_SIT_THRONE_NEW(20, 30, 23, 10, "PARTM1_HOUSE_THRONE_01");
    TA_STAND_ARMSCROSSED(23, 10, 1, 20, "PART1_BARRACK_ENTRY_01");
    TA_SLEEP(1, 20, 5, 50, "PARTM3_BARRACK_HOUSE3_BED_01");
}

