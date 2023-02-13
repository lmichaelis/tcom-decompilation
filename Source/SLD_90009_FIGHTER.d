instance SLD_90009_FIGHTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = "Wojownik - Najemnik";
    GUILD = GIL_SLD;
    ID = 90009;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_90009_FIGHTER, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_90009_FIGHTER, MALE, HUMHEADWITHOUTPONY, FACE_P_MAILOR, 0, 35465);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_90009_FIGHTER);
    B_GIVENPCTALENTS(SLD_90009_FIGHTER);
    B_SETFIGHTSKILLS(SLD_90009_FIGHTER, 45);
    DAILY_ROUTINE = RTN_START_90009;
}

func void RTN_START_90009() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART4_MOB_53");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART4_MOB_53");
}

func void RTN_TOT_90009() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, TOT);
    TA_STAYSTRAIGHT(9, 0, 8, 0, TOT);
}
