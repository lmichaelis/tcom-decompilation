instance NONE_14133_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOBO;
    GUILD = GIL_NONE;
    ID = 14133;
    VOICE = 17;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(NONE_14133_HOBO, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(NONE_14133_HOBO, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_14133_HOBO, HUMBODYNAKED0, BODYTEX_N_HOMELESS01, 0, HUMHEADBALD, FACE_N_HOBO75, TEETHTEX_ROTTEN_V2, -(1));
    MDL_APPLYOVERLAYMDS(NONE_14133_HOBO, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_14133_HOBO);
    B_GIVENPCTALENTS(NONE_14133_HOBO);
    B_SETFIGHTSKILLS(NONE_14133_HOBO, 23);
    DAILY_ROUTINE = RTN_START_14133;
}

func void RTN_START_14133() {
    TA_PLUNDER(23, 0, 3, 0, "SLUMS_HOUSE19_05");
    TA_PLUNDER(3, 0, 23, 0, "SLUMS_HOUSE19_05");
}

