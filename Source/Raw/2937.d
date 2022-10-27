instance NONE_13672_DEGORY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_DEGORY;
    GUILD = GIL_NONE;
    ID = 0x3568;
    VOICE = 37;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_13672_DEGORY, 14);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(NONE_13672_DEGORY, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_13672_DEGORY, HUMBODYNAKED0, BODYTEX_B_HOMELESS01, 0, HUMHEADPYMONTENEU, FACE_B_HOBO56, TEETHTEX_NORMAL, 0x8b02);
    MDL_APPLYOVERLAYMDS(NONE_13672_DEGORY, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13672_DEGORY);
    B_GIVENPCTALENTS(NONE_13672_DEGORY);
    B_SETFIGHTSKILLS(NONE_13672_DEGORY, 15);
    DAILY_ROUTINE = RTN_START_13672;
}

func void RTN_START_13672() {
    TA_FIREPLACE(6, 0, 17, 0, "S2_BRAZIER_02");
    TA_FIREPLACE(17, 0, 6, 0, "S2_BRAZIER_02");
}

func void RTN_KQ405_GUIDE_13672() {
    TA_GUIDE_PLAYER(6, 0, 17, 0, "S2_KQ405_DEGORY_GUIDE");
    TA_GUIDE_PLAYER(17, 0, 6, 0, "S2_KQ405_DEGORY_GUIDE");
}

func void RTN_KQ405_WAIT_13672() {
    TA_LOOKOUT(6, 0, 17, 0, "S2_KQ405_DEGORY_GUIDE");
    TA_LOOKOUT(17, 0, 6, 0, "S2_KQ405_DEGORY_GUIDE");
}
