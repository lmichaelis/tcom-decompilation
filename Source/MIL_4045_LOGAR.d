instance MIL_4045_LOGAR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_LOGAR;
    GUILD = GIL_MIL;
    ID = 4045;
    VOICE = 17;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_4045_LOGAR, 20);
    EQUIPITEM(MIL_4045_LOGAR, 39564);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    MDL_SETVISUAL(MIL_4045_LOGAR, HUMANSSPEARMDS);
    MDL_SETVISUALBODY(MIL_4045_LOGAR, HUMBODYNAKED0, 1, 0, HUMHEADFIGHTER, FACE_N_PRISONGUARD01, 0, 35488);
    B_GIVENPCTALENTS(MIL_4045_LOGAR);
    B_SETFIGHTSKILLS(MIL_4045_LOGAR, 50);
    DAILY_ROUTINE = RTN_START_4045;
}

func void RTN_START_4045() {
    TA_STAND_GUARDING2(8, 0, 22, 0, "PARTM3_PRISON_STAND_01");
    TA_STAND_GUARDING2(22, 0, 8, 0, "PARTM3_PRISON_STAND_01");
}

