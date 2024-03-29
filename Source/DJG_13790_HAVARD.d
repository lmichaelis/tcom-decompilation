instance DJG_13790_HAVARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_HAVARD;
    GUILD = GIL_DJG;
    ID = 13790;
    VOICE = 30;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_13790_HAVARD, 60);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(DJG_13790_HAVARD, MALE, HUMHEADWITHOUTPONY, FACE_L_HAVARD, 2, 35512);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_13790_HAVARD);
    MDL_APPLYOVERLAYMDS(DJG_13790_HAVARD, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(DJG_13790_HAVARD);
    B_SETFIGHTSKILLS(DJG_13790_HAVARD, 90);
    DAILY_ROUTINE = RTN_START_13790;
}

func void RTN_START_13790() {
    TA_LEAN(8, 0, 13, 30, "WOLFSDEN_CITADEL_LEAN_01");
    TA_LEAN(13, 30, 8, 0, "WOLFSDEN_CITADEL_LEAN_01");
}

func void RTN_TOT_13790() {
    TA_SOFA(5, 30, 9, 0, TOT);
    TA_SOFA(9, 0, 5, 30, TOT);
}

func void RTN_Q404_MINE_13790() {
    TA_PREPAREFORFIGHT(5, 30, 9, 0, "WOLFSDEN_CITADEL_HELP_02");
    TA_PREPAREFORFIGHT(9, 0, 5, 30, "WOLFSDEN_CITADEL_HELP_02");
}

func void RTN_Q404_TAVERN_13790() {
    TA_STAND_DRINKING(5, 30, 9, 0, "WOLFSDEN_TAVERN_07");
    TA_STAND_DRINKING(9, 0, 5, 30, "WOLFSDEN_TAVERN_07");
}

func void RTN_CHAPTER5_13790() {
    TA_STAND_GUARDING(5, 30, 9, 0, "VILLAGE_TRAINFARMER_01");
    TA_STAND_GUARDING(9, 0, 5, 30, "VILLAGE_TRAINFARMER_01");
}

func void RTN_Q509_WAIT_13790() {
    TA_PREPAREFORFIGHT(5, 30, 9, 0, "PART5_Q509_HAVARD");
    TA_PREPAREFORFIGHT(9, 0, 5, 30, "PART5_Q509_HAVARD");
}

