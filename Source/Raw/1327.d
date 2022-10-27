instance VLK_11088_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOBO;
    GUILD = GIL_NONE;
    ID = 0x2b50;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_11088_HOBO, 3);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(VLK_11088_HOBO, HUMANSMDS);
    MDL_SETVISUALBODY(VLK_11088_HOBO, HUMBODYNAKED0, BODYTEX_B_HOMELESS02, 0, HUMHEADTHIEF, FACE_B_HOBO13, TEETHTEX_ROTTEN_V2, -(1));
    MDL_APPLYOVERLAYMDS(VLK_11088_HOBO, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11088_HOBO);
    B_GIVENPCTALENTS(VLK_11088_HOBO);
    B_SETFIGHTSKILLS(VLK_11088_HOBO, 25);
    DAILY_ROUTINE = RTN_START_11088;
    AIVAR[70] = NPC_AMB_CITY_HOMELESS;
}

func void RTN_START_11088() {
    TA_SIT_DEPRESSION(10, 0, 11, 0, "PARTM3_HOBO_07");
    TA_SIT_DEPRESSION(11, 0, 10, 0, "PARTM3_HOBO_07");
}

