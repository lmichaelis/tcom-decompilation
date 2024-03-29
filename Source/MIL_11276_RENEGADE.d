instance MIL_11276_RENEGADE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_RENEGADE;
    GUILD = GIL_BDT;
    ID = 11276;
    VOICE = 51;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[61] = TRUE;
    AIVAR[52] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETATTRIBUTESTOLEVEL(MIL_11276_RENEGADE, 18);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_11276_RENEGADE, MALE, HUMHEADPFEIFFERNEU, FACE_N_RENEGADE06, 1, 35509);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_11276_RENEGADE);
    B_GIVENPCTALENTS(MIL_11276_RENEGADE);
    B_SETFIGHTSKILLS(MIL_11276_RENEGADE, 30);
    DAILY_ROUTINE = RTN_START_11276;
}

func void RTN_START_11276() {
    TA_STAND_ARMSCROSSED(8, 0, 9, 0, "PART4_RENEGADE_01");
    TA_STAND_ARMSCROSSED(9, 0, 8, 0, "PART4_RENEGADE_01");
}

