instance DJG_10009_WOLFSON(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_DJG;
    ID = 10009;
    VOICE = 61;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(DJG_10009_WOLFSON, 40);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_10009_WOLFSON, MALE, HUMHEADBALD, FACE_N_WOLFSON01, BODYTEX_N, 35518);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10009_WOLFSON);
    MDL_APPLYOVERLAYMDS(DJG_10009_WOLFSON, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(DJG_10009_WOLFSON);
    B_SETFIGHTSKILLS(DJG_10009_WOLFSON, 80);
    DAILY_ROUTINE = RTN_START_10009;
    AIVAR[70] = NPC_AMB_WOLFSON;
}

func void RTN_START_10009() {
    TA_LEAN(8, 10, 12, 0, "WOLFSDEN_LEAN_03");
    TA_PLUNDER(12, 0, 15, 30, "WOLFSDEN_PLUNDER_02");
    TA_SIT_CHAIR_EAT(15, 30, 18, 0, "WOLFSDEN_TAVERN_CHAIR01");
    TA_SIT_CHAIR(18, 0, 21, 0, "WOLFSDEN_TAVERN_CHAIR01");
    TA_SIT_CHAIR_EAT(21, 0, 23, 0, "WOLFSDEN_TAVERN_CHAIR01");
    TA_SLEEP(23, 0, 8, 10, "WOLFSDEN_HOUSE04_BED03");
}

func void RTN_SQ415_FIGHT_10009() {
    TA_STAYSTRAIGHT_NOIQ(7, 45, 15, 30, "PART16_SQ415_AUDIENCE_01");
    TA_STAYSTRAIGHT_NOIQ(15, 30, 7, 45, "PART16_SQ415_AUDIENCE_01");
}

func void RTN_SQ417_WAIT_10009() {
    TA_LEAN(8, 10, 12, 0, "WOLFSDEN_LEAN_03");
    TA_PLUNDER(12, 0, 15, 30, "WOLFSDEN_PLUNDER_02");
    TA_SIT_CHAIR_EAT(15, 30, 16, 0, "WOLFSDEN_TAVERN_CHAIR01");
    TA_SLEEP(16, 0, 8, 10, "WOLFSDEN_HOUSE04_BED03");
}

