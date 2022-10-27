instance VLK_11173_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOBO;
    GUILD = GIL_NONE;
    ID = 0x2ba5;
    VOICE = 58;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(VLK_11173_HOBO, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(VLK_11173_HOBO, HUMANSMDS);
    MDL_SETVISUALBODY(VLK_11173_HOBO, HUMBODYNAKED0, BODYTEX_N_HOMELESS01, 0, HUMHEADLUTTERNEU, FACE_N_HOBO26, TEETHTEX_BROKENTOOTH, -(1));
    MDL_APPLYOVERLAYMDS(VLK_11173_HOBO, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11173_HOBO);
    B_GIVENPCTALENTS(VLK_11173_HOBO);
    B_SETFIGHTSKILLS(VLK_11173_HOBO, 35);
    DAILY_ROUTINE = RTN_START_11173;
}

func void RTN_START_11173() {
    TA_PLUNDER(23, 0, 3, 0, "SLUMS_HOBO_05");
    TA_PLUNDER(3, 0, 23, 0, TOT2);
}
