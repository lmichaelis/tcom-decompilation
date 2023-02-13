instance MIL_13921_Q308_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 13921;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_13921_Q308_MILITIA, 28);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13921_Q308_MILITIA, MALE, HUMHEADFIGHTER, FACE_L_MILITIA114, 2, 35482);
    MDL_APPLYOVERLAYMDS(MIL_13921_Q308_MILITIA, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13921_Q308_MILITIA);
    B_GIVENPCTALENTS(MIL_13921_Q308_MILITIA);
    B_SETFIGHTSKILLS(MIL_13921_Q308_MILITIA, 30);
    DAILY_ROUTINE = RTN_START_13921;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_13921() {
    TA_OBSERVE(8, 0, 22, 0, "PARTM2_GATEGUARD_08");
    TA_OBSERVE(22, 0, 8, 0, "PARTM2_GATEGUARD_08");
}

func void RTN_TOT_13921() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

