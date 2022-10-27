instance VLK_11079_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOBO;
    GUILD = GIL_NONE;
    ID = 0x2b47;
    VOICE = 23;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_11079_HOBO, 12);
    FIGHT_TACTIC = FAI_HUMAN_BAU;
    MDL_SETVISUAL(VLK_11079_HOBO, HUMANSMDS);
    MDL_SETVISUALBODY(VLK_11079_HOBO, HUMBODYNAKED0, BODYTEX_L_HOMELESS01, 0, HUMHEADPSIONIC, FACE_L_HOBO05, TEETHTEX_ROTTEN_V2, -(1));
    MDL_APPLYOVERLAYMDS(VLK_11079_HOBO, HUMANSBAUFIGHTMDS);
    MDL_APPLYOVERLAYMDS(VLK_11079_HOBO, HUMANSTIREDMDS);
    EQUIPITEM(VLK_11079_HOBO, 0x84e0);
    B_CREATEAMBIENTINV(VLK_11079_HOBO);
    B_GIVENPCTALENTS(VLK_11079_HOBO);
    B_SETFIGHTSKILLS(VLK_11079_HOBO, 35);
    DAILY_ROUTINE = RTN_START_11079;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_11079() {
    TA_SMOKE_JOINT(6, 0, 22, 0, TOT2);
    TA_SMOKE_JOINT(22, 0, 6, 0, "PARTM2_PATH_36");
}

