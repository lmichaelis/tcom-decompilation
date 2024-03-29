instance MIL_90005_FIGHTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = "Wojownik - Stra�";
    GUILD = GIL_MIL;
    ID = 90005;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_90005_FIGHTER, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_90005_FIGHTER, MALE, HUMHEADWITHOUTPONY, FACE_P_MAILOR, 0, 35488);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_90005_FIGHTER);
    B_GIVENPCTALENTS(MIL_90005_FIGHTER);
    B_SETFIGHTSKILLS(MIL_90005_FIGHTER, 45);
    DAILY_ROUTINE = RTN_START_90005;
}

func void RTN_START_90005() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART4_MOB_53");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART4_MOB_53");
}

func void RTN_TOT_90005() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, TOT);
    TA_STAYSTRAIGHT(9, 0, 8, 0, TOT);
}

