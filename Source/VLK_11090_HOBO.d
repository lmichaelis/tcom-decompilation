instance VLK_11090_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOBO;
    GUILD = GIL_NONE;
    ID = 11090;
    VOICE = 59;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_11090_HOBO, 3);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(VLK_11090_HOBO, HUMANSMDS);
    MDL_SETVISUALBODY(VLK_11090_HOBO, HUMBODYNAKED0, BODYTEX_L_HOMELESS01, 0, HUMHEADPSIONIC, FACE_L_HOBO15, TEETHTEX_YELLOW, -(1));
    MDL_APPLYOVERLAYMDS(VLK_11090_HOBO, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11090_HOBO);
    B_GIVENPCTALENTS(VLK_11090_HOBO);
    B_SETFIGHTSKILLS(VLK_11090_HOBO, 35);
    DAILY_ROUTINE = RTN_START_11090;
    AIVAR[70] = NPC_AMB_CITY_HOMELESS;
}

func void RTN_START_11090() {
    TA_PLUNDER(10, 0, 11, 0, "PARTM3_HOBO_09_PLUNDER");
    TA_PLUNDER(11, 0, 10, 0, "PARTM3_HOBO_09_PLUNDER");
}

