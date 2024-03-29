instance NONE_13576_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOBO;
    GUILD = GIL_NONE;
    ID = 13576;
    VOICE = 60;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13576_HOBO, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    MDL_SETVISUAL(NONE_13576_HOBO, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_13576_HOBO, HUMBODYNAKED0, BODYTEX_B_HOMELESS01, 0, HUMHEADTHOMASNEU, FACE_B_HOBO44, TEETHTEX_ROTTEN_V2, -(1));
    MDL_APPLYOVERLAYMDS(NONE_13576_HOBO, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13576_HOBO);
    B_GIVENPCTALENTS(NONE_13576_HOBO);
    B_SETFIGHTSKILLS(NONE_13576_HOBO, 45);
    DAILY_ROUTINE = RTN_START_13576;
}

func void RTN_START_13576() {
    TA_LOOKOUT(6, 0, 17, 0, "SLUMS_QA305_HOMELESS_02");
    TA_LOOKOUT(17, 0, 6, 0, "SLUMS_QA305_HOMELESS_02");
}

func void RTN_TOT_13576() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

