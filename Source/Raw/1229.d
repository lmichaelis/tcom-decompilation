instance MIL_13337_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 0x3419;
    VOICE = 37;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_13337_MILITIA, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13337_MILITIA, MALE, HUMHEADBALD, FACE_N_MILITIA84, 1, 0x8aa5);
    MDL_APPLYOVERLAYMDS(MIL_13337_MILITIA, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13337_MILITIA);
    B_GIVENPCTALENTS(MIL_13337_MILITIA);
    B_SETFIGHTSKILLS(MIL_13337_MILITIA, 40);
    DAILY_ROUTINE = RTN_START_13337;
}

func void RTN_START_13337() {
    TA_SIT_TURKISH_DUMB(8, 0, 13, 0, "PARTM1_CITYWALL_EASTEREGG01");
    TA_SIT_TURKISH_DUMB(13, 0, 8, 0, "PARTM1_CITYWALL_EASTEREGG01");
}
