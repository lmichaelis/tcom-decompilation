instance NONE_6408_OSIPFRIEND_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_THUG;
    GUILD = GIL_NONE;
    ID = 50115;
    VOICE = 68;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6408_OSIPFRIEND_Q602, 20);
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NONE_6408_OSIPFRIEND_Q602, MALE, HUMHEADPSIONIC, FACE_N_OSIPFRIEND_01, 1, 35571);
    MDL_APPLYOVERLAYMDS(NONE_6408_OSIPFRIEND_Q602, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6408_OSIPFRIEND_Q602);
    B_GIVENPCTALENTS(NONE_6408_OSIPFRIEND_Q602);
    B_SETFIGHTSKILLS(NONE_6408_OSIPFRIEND_Q602, 20);
    DAILY_ROUTINE = RTN_START_50115;
}

func void RTN_START_50115() {
    TA_PLUNDER_Q602(8, 0, 9, 0, "PARTE4_OSSIP_FRIEND_02");
    TA_PLUNDER_Q602(9, 0, 8, 0, "PARTE4_OSSIP_FRIEND_02");
}

func void RTN_Q602_FLEE_50115() {
    TA_FLEE_NOIQ(8, 0, 9, 0, "PARTE3_BLAKE");
    TA_FLEE_NOIQ(9, 0, 8, 0, "PARTE3_BLAKE");
}

func void RTN_TOT_50115() {
    TA_FLEE_NOIQ(8, 0, 9, 0, TOT);
    TA_FLEE_NOIQ(9, 0, 8, 0, TOT);
}

