instance MIL_11275_RENEGADE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_RENEGADE;
    GUILD = GIL_BDT;
    ID = 11275;
    VOICE = 35;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[61] = TRUE;
    AIVAR[52] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETATTRIBUTESTOLEVEL(MIL_11275_RENEGADE, 18);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_11275_RENEGADE, MALE, HUMHEADPONY, FACE_N_RENEGADE05, 1, 35509);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_11275_RENEGADE);
    B_GIVENPCTALENTS(MIL_11275_RENEGADE);
    B_SETFIGHTSKILLS(MIL_11275_RENEGADE, 30);
    DAILY_ROUTINE = RTN_START_11275;
}

func void RTN_START_11275() {
    TA_STAND_ARMSCROSSED(8, 0, 9, 0, "PART4_RENEGADE_02");
    TA_STAND_ARMSCROSSED(9, 0, 8, 0, "PART4_RENEGADE_02");
}

