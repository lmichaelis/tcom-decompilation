instance MIL_13918_Q308_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 0x365e;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_13918_Q308_MILITIA, 35);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13918_Q308_MILITIA, MALE, HUMHEADBALD, FACE_B_MILITIA111, 3, 0x8aa5);
    MDL_APPLYOVERLAYMDS(MIL_13918_Q308_MILITIA, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13918_Q308_MILITIA);
    B_GIVENPCTALENTS(MIL_13918_Q308_MILITIA);
    B_SETFIGHTSKILLS(MIL_13918_Q308_MILITIA, 50);
    DAILY_ROUTINE = RTN_START_13918;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_13918() {
    TA_CROSSBOWGUARD(8, 0, 22, 0, "PARTM2_GATEGUARD_01");
    TA_CROSSBOWGUARD(22, 0, 8, 0, "PARTM2_GATEGUARD_01");
}

func void RTN_TOT_13918() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

