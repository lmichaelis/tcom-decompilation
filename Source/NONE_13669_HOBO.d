instance NONE_13669_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOBO;
    GUILD = GIL_NONE;
    ID = 13669;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_13669_HOBO, 12);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(NONE_13669_HOBO, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_13669_HOBO, HUMBODYNAKED0, BODYTEX_P_HOMELESS02, 0, HUMHEADUNICORNNEU, FACE_P_HOBO55, TEETHTEX_ROTTEN_V2, -(1));
    MDL_APPLYOVERLAYMDS(NONE_13669_HOBO, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13669_HOBO);
    B_GIVENPCTALENTS(NONE_13669_HOBO);
    B_SETFIGHTSKILLS(NONE_13669_HOBO, 15);
    DAILY_ROUTINE = RTN_START_13669;
    AIVAR[70] = NPC_AMB_CITY_SEWERS;
}

func void RTN_START_13669() {
    TA_DRINKBARREL(6, 0, 17, 0, "S2_BARRELWATER_01");
    TA_DRINKBARREL(17, 0, 6, 0, "S2_BARRELWATER_01");
}

