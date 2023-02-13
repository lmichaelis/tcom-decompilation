instance NONE_13671_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOBO;
    GUILD = GIL_NONE;
    ID = 13671;
    VOICE = 28;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_13671_HOBO, 12);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(NONE_13671_HOBO, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_13671_HOBO, HUMBODYNAKED0, BODYTEX_N_HOMELESS02, 0, HUMHEADFLAILNEU, FACE_N_HOBO57, TEETHTEX_YELLOW, -(1));
    MDL_APPLYOVERLAYMDS(NONE_13671_HOBO, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13671_HOBO);
    B_GIVENPCTALENTS(NONE_13671_HOBO);
    B_SETFIGHTSKILLS(NONE_13671_HOBO, 15);
    DAILY_ROUTINE = RTN_START_13671;
    AIVAR[70] = NPC_AMB_CITY_SEWERS;
}

func void RTN_START_13671() {
    TA_SLEEP(6, 0, 17, 0, "S2_HAMMOCK_02");
    TA_SLEEP(17, 0, 6, 0, "S2_HAMMOCK_02");
}

