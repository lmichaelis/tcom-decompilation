instance NONE_11270_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOBO;
    GUILD = GIL_NONE;
    ID = 11270;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_11270_HOBO, 10);
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(NONE_11270_HOBO, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_11270_HOBO, HUMBODYNAKED0, BODYTEX_N_HOMELESS02, 0, HUMHEADPONY, FACE_N_HOBO36, TEETHTEX_ROTTEN_V2, -(1));
    MDL_APPLYOVERLAYMDS(NONE_11270_HOBO, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_11270_HOBO);
    B_GIVENPCTALENTS(NONE_11270_HOBO);
    B_SETFIGHTSKILLS(NONE_11270_HOBO, 35);
    DAILY_ROUTINE = RTN_START_11270;
    AIVAR[70] = NPC_AMB_CITY_HOMELESS;
}

func void RTN_START_11270() {
    TA_LEAN(23, 0, 3, 0, "SLUMS_HOBO_08");
    TA_LEAN(3, 0, 23, 0, "SLUMS_HOBO_08");
}
