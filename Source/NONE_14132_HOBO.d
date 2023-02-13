instance NONE_14132_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOBO;
    GUILD = GIL_NONE;
    ID = 14132;
    VOICE = 60;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(NONE_14132_HOBO, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(NONE_14132_HOBO, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_14132_HOBO, HUMBODYNAKED0, BODYTEX_L_HOMELESS01, 0, HUMHEADPSIONIC, FACE_L_HOBO74, TEETHTEX_ROTTEN_V2, -(1));
    MDL_APPLYOVERLAYMDS(NONE_14132_HOBO, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_14132_HOBO);
    B_GIVENPCTALENTS(NONE_14132_HOBO);
    B_SETFIGHTSKILLS(NONE_14132_HOBO, 23);
    DAILY_ROUTINE = RTN_START_14132;
}

func void RTN_START_14132() {
    TA_PLUNDER(23, 0, 3, 0, "SLUMS_HOUSE19_04");
    TA_PLUNDER(3, 0, 23, 0, "SLUMS_HOUSE19_04");
}

