instance NONE_13688_EYELESSHOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BLINDED;
    GUILD = GIL_HARPY;
    ID = 13688;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_13688_EYELESSHOBO, 33);
    FIGHT_TACTIC = FAI_ZOMBIE_STRONG;
    EQUIPITEM(NONE_13688_EYELESSHOBO, 39512);
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
    B_CREATEAMBIENTINV(NONE_13688_EYELESSHOBO);
    MDL_SETVISUAL(NONE_13688_EYELESSHOBO, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_13688_EYELESSHOBO, HUMBODYNAKED0, BODYTEX_EH_EYELESS, 0, HUMHEADBALDNOBLINKCREEPY, FACE_EH_EYELESSHOBO, TEETHTEX_YELLOW, -(1));
    B_GIVENPCTALENTS(NONE_13688_EYELESSHOBO);
    B_SETFIGHTSKILLS(NONE_13688_EYELESSHOBO, 33);
    DAILY_ROUTINE = RTN_START_13688;
}

func void RTN_START_13688() {
    TA_STAYSTRAIGHT_BLINDED(6, 0, 7, 0, RNG_SEVENT01_WAYPOINT);
    TA_STAYSTRAIGHT_BLINDED(7, 0, 8, 0, "S2_PATH_18");
    TA_STAYSTRAIGHT_BLINDED(8, 0, 9, 0, "S2_PATH_29");
    TA_STAYSTRAIGHT_BLINDED(9, 0, 10, 0, "S2_PATH_18");
    TA_STAYSTRAIGHT_BLINDED(10, 0, 11, 0, "S2_PATH_29");
    TA_STAYSTRAIGHT_BLINDED(11, 0, 12, 0, RNG_SEVENT01_WAYPOINT);
    TA_STAYSTRAIGHT_BLINDED(12, 0, 13, 0, "S2_PATH_29");
    TA_STAYSTRAIGHT_BLINDED(13, 0, 14, 0, "S2_PATH_18");
    TA_STAYSTRAIGHT_BLINDED(14, 0, 15, 0, "S2_PATH_29");
    TA_STAYSTRAIGHT_BLINDED(15, 0, 16, 0, "S2_PATH_18");
    TA_STAYSTRAIGHT_BLINDED(16, 0, 17, 0, RNG_SEVENT01_WAYPOINT);
    TA_STAYSTRAIGHT_BLINDED(17, 0, 18, 0, "S2_PATH_18");
    TA_STAYSTRAIGHT_BLINDED(18, 0, 19, 0, RNG_SEVENT01_WAYPOINT);
    TA_STAYSTRAIGHT_BLINDED(19, 0, 20, 0, "S2_PATH_29");
    TA_STAYSTRAIGHT_BLINDED(20, 0, 21, 0, "S2_PATH_32");
    TA_STAYSTRAIGHT_BLINDED(21, 0, 22, 0, "S2_PATH_29");
    TA_STAYSTRAIGHT_BLINDED(22, 0, 23, 0, "S2_PATH_18");
    TA_STAYSTRAIGHT_BLINDED(23, 0, 0, 0, RNG_SEVENT01_WAYPOINT);
    TA_STAYSTRAIGHT_BLINDED(0, 0, 2, 0, "S2_PATH_18");
    TA_STAYSTRAIGHT_BLINDED(2, 0, 4, 0, "S2_PATH_29");
    TA_STAYSTRAIGHT_BLINDED(4, 0, 5, 0, "S2_PATH_18");
    TA_STAYSTRAIGHT_BLINDED(5, 0, 6, 0, "S2_PATH_29");
}

func void RTN_TOT_13688() {
    TA_STAYSTRAIGHT_BLINDED(6, 0, 7, 0, TOT);
    TA_STAYSTRAIGHT_BLINDED(7, 0, 6, 0, TOT);
}
