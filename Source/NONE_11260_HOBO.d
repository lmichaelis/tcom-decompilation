instance NONE_11260_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = RESERVED_CONST_STRING_40;
    GUILD = GIL_NONE;
    ID = 11260;
    VOICE = 58;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_11260_HOBO, 10);
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    AIVAR[95] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    MDL_SETVISUAL(NONE_11260_HOBO, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_11260_HOBO, HUMBODYNAKED0, BODYTEX_B_HOMELESS02, 0, HUMHEADPYMONTENEU, FACE_B_HOBO30, TEETHTEX_BROKENTOOTH, -(1));
    MDL_APPLYOVERLAYMDS(NONE_11260_HOBO, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_11260_HOBO);
    B_GIVENPCTALENTS(NONE_11260_HOBO);
    B_SETFIGHTSKILLS(NONE_11260_HOBO, 35);
    DAILY_ROUTINE = RTN_START_11260;
}

func void RTN_START_11260() {
    TA_KILLMARVIN(23, 0, 3, 0, RNG_TRAP14_WAYPOINT);
    TA_KILLMARVIN(3, 0, 23, 0, RNG_TRAP14_WAYPOINT);
}

