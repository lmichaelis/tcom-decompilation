instance MIL_13932_Q308_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 13932;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_13932_Q308_MILITIA, 26);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13932_Q308_MILITIA, MALE, HUMHEADBALD, FACE_B_MILITIA118, 3, 35482);
    MDL_APPLYOVERLAYMDS(MIL_13932_Q308_MILITIA, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13932_Q308_MILITIA);
    B_GIVENPCTALENTS(MIL_13932_Q308_MILITIA);
    B_SETFIGHTSKILLS(MIL_13932_Q308_MILITIA, 30);
    DAILY_ROUTINE = RTN_START_13932;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_13932() {
    TA_OBSERVE(8, 0, 22, 0, "PARTM4_GUARD_Q308_03");
    TA_OBSERVE(22, 0, 8, 0, "PARTM4_GUARD_Q308_03");
}

func void RTN_TOT_13932() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

