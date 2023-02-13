instance VLK_6124_LUTE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MUSICIAN;
    GUILD = GIL_VLK;
    ID = 6124;
    VOICE = 61;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6124_LUTE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6124_LUTE, MALE, HUMHEADFIGHTER, FACE_N_CITIZEN18, 1, 35543);
    MDL_APPLYOVERLAYMDS(VLK_6124_LUTE, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6124_LUTE);
    B_GIVENPCTALENTS(VLK_6124_LUTE);
    B_SETFIGHTSKILLS(VLK_6124_LUTE, 40);
    DAILY_ROUTINE = RTN_START_6124;
}

func void RTN_START_6124() {
    TA_PLAY_LUTE(8, 0, 9, 0, "PARTM2_CHILLHOUSE2");
    TA_PLAY_LUTE(9, 0, 8, 0, "PARTM2_CHILLHOUSE2");
}

