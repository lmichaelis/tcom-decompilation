instance VLK_13779_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOBO;
    GUILD = GIL_NONE;
    ID = 13779;
    VOICE = 63;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_13779_HOBO, 5);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(VLK_13779_HOBO, HUMANSMDS);
    MDL_SETVISUALBODY(VLK_13779_HOBO, HUMBODYNAKED0, BODYTEX_N_HOMELESS02, 0, HUMHEADFLEXNEU, FACE_N_HOBO63, TEETHTEX_ROTTEN_V1, -(1));
    MDL_APPLYOVERLAYMDS(VLK_13779_HOBO, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13779_HOBO);
    B_GIVENPCTALENTS(VLK_13779_HOBO);
    B_SETFIGHTSKILLS(VLK_13779_HOBO, 12);
    B_CREATEAMBIENTINV(VLK_13779_HOBO);
    DAILY_ROUTINE = RTN_START_13779;
}

func void RTN_START_13779() {
    TA_PLUNDER(8, 0, 22, 0, RNG_TRAP57_WAYPOINT);
    TA_PLUNDER(22, 0, 8, 0, RNG_TRAP57_WAYPOINT);
}

