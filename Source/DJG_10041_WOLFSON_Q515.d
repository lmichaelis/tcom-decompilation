instance DJG_10041_WOLFSON_Q515(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_DJG;
    ID = 10041;
    VOICE = 26;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10041_WOLFSON_Q515, 50);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[15] = TRUE;
    B_SETNPCVISUAL(DJG_10041_WOLFSON_Q515, MALE, HUMHEADBALD, FACE_B_WOLFSON11, 3, 35518);
    MDL_APPLYOVERLAYMDS(DJG_10041_WOLFSON_Q515, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10041_WOLFSON_Q515);
    B_GIVENPCTALENTS(DJG_10041_WOLFSON_Q515);
    B_SETFIGHTSKILLS(DJG_10041_WOLFSON_Q515, 80);
    DAILY_ROUTINE = RTN_START_10041;
}

func void RTN_START_10041() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, "PART5_VOLFZACKE_Q515_SWORDSMAN");
    TA_STAYSTRAIGHT(23, 0, 8, 0, "PART5_VOLFZACKE_Q515_SWORDSMAN");
}

func void RTN_Q515_DIALOG_10041() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, "PART5_VOLFZACKE_ULRYK");
    TA_STAYSTRAIGHT(23, 0, 8, 0, "PART5_VOLFZACKE_ULRYK");
}

func void RTN_TOT_10041() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, TOT);
    TA_STAYSTRAIGHT(23, 0, 8, 0, TOT);
}

