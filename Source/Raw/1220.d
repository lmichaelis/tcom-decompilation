instance NONE_13319_FAKEJORN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BALDGUY;
    GUILD = GIL_NONE;
    ID = 0x3407;
    VOICE = 63;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13319_FAKEJORN, 5);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(NONE_13319_FAKEJORN, MALE, HUMHEADBALD, FACE_N_FAKEJORN02, BODYTEX_N, 0x8af3);
    MDL_SETMODELFATNESS(NONE_13319_FAKEJORN, 0x40000000);
    B_GIVENPCTALENTS(NONE_13319_FAKEJORN);
    B_SETFIGHTSKILLS(NONE_13319_FAKEJORN, 30);
    DAILY_ROUTINE = RTN_START_13319;
}

func void RTN_START_13319() {
    TA_OBSERVE(7, 0, 22, 0, RNG_NS12_FAKEJORN02_WAYPOINT);
    TA_OBSERVE(22, 0, 7, 0, RNG_NS12_FAKEJORN02_WAYPOINT);
}

func void RTN_TOT_13319() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT_NOIQ(22, 0, 8, 0, TOT);
}

