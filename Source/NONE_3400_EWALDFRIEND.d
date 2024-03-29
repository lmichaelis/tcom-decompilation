instance NONE_3400_EWALDFRIEND(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BULLY;
    GUILD = GIL_NONE;
    ID = 3400;
    VOICE = 66;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_3400_EWALDFRIEND, 10);
    FIGHT_TACTIC = FAI_HUMAN_BAU;
    B_SETNPCVISUAL(NONE_3400_EWALDFRIEND, MALE, HUMHEADPONY, FACE_N_EWALDFRIEND_01, 1, 35551);
    MDL_APPLYOVERLAYMDS(NONE_3400_EWALDFRIEND, HUMANSMILITIAMDS);
    MDL_APPLYOVERLAYMDS(NONE_3400_EWALDFRIEND, HUMANSBAUFIGHTMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_3400_EWALDFRIEND);
    B_GIVENPCTALENTS(NONE_3400_EWALDFRIEND);
    B_SETFIGHTSKILLS(NONE_3400_EWALDFRIEND, 50);
    DAILY_ROUTINE = RTN_START_3400;
}

func void RTN_START_3400() {
    TA_LEAN(8, 0, 22, 0, "PARTM4_WORKSHOP_FRIEND_01");
    TA_LEAN(22, 0, 8, 0, "PARTM4_WORKSHOP_FRIEND_01");
}

func void RTN_TOT_3400() {
    TA_LEAN(8, 0, 22, 0, TOT);
    TA_LEAN(22, 0, 8, 0, TOT);
}

