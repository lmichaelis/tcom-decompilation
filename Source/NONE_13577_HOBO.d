instance NONE_13577_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOBO;
    GUILD = GIL_NONE;
    ID = 13577;
    VOICE = 24;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13577_HOBO, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    MDL_SETVISUAL(NONE_13577_HOBO, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_13577_HOBO, HUMBODYNAKED0, BODYTEX_N_HOMELESS03, 0, HUMHEADPYMONTENEU, FACE_N_HOBO45, TEETHTEX_BROKENTOOTH, -(1));
    MDL_APPLYOVERLAYMDS(NONE_13577_HOBO, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13577_HOBO);
    B_GIVENPCTALENTS(NONE_13577_HOBO);
    B_SETFIGHTSKILLS(NONE_13577_HOBO, 45);
    DAILY_ROUTINE = RTN_START_13577;
}

func void RTN_START_13577() {
    TA_DRINKBARREL(6, 0, 17, 0, "SLUMS_QA305_HOMELESS_01");
    TA_DRINKBARREL(17, 0, 6, 0, "SLUMS_QA305_HOMELESS_01");
}

func void RTN_TOT_13577() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}
