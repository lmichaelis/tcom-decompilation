instance SLD_90012_ARCHER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = "�ucznik - Najemnik";
    GUILD = GIL_SLD;
    ID = 0x15f9c;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_90012_ARCHER, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_90012_ARCHER, MALE, HUMHEADWITHOUTPONY, FACE_P_MAILOR, 0, 0x8a8e);
    EQUIPITEM(SLD_90012_ARCHER, 0x865a);
    CREATEINVITEMS(SLD_90012_ARCHER, 0x864f, 30);
    B_GIVENPCTALENTS(SLD_90012_ARCHER);
    B_SETFIGHTSKILLS(SLD_90012_ARCHER, 45);
    DAILY_ROUTINE = RTN_START_90012;
}

func void RTN_START_90012() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART4_MOB_53");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART4_MOB_53");
}

func void RTN_TOT_90012() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, TOT);
    TA_STAYSTRAIGHT(9, 0, 8, 0, TOT);
}
