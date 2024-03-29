instance NONE_13851_HOMELESS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOMELESS;
    GUILD = GIL_NONE;
    ID = 13851;
    VOICE = 6;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_13851_HOMELESS, 8);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(NONE_13851_HOMELESS, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_13851_HOMELESS, HUMBODYNAKED0, BODYTEX_B_HOMELESS02, 0, HUMHEADBALD, FACE_B_HOBO69, TEETHTEX_ROTTEN_V1, -(1));
    MDL_APPLYOVERLAYMDS(NONE_13851_HOMELESS, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13851_HOMELESS);
    B_GIVENPCTALENTS(NONE_13851_HOMELESS);
    B_SETFIGHTSKILLS(NONE_13851_HOMELESS, 10);
    DAILY_ROUTINE = RTN_START_13851;
    AIVAR[70] = NPC_AMB_CITY_HOMELESS;
}

func void RTN_START_13851() {
    TA_PLUNDER(6, 0, 20, 0, "SLUMS_PLUNDER_02");
    TA_PLUNDER(20, 0, 6, 0, "SLUMS_PLUNDER_02");
}

