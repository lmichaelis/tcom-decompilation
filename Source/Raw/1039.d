instance MIL_90008_CROSSBOW(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = "Kusznik - Stra?";
    GUILD = GIL_MIL;
    ID = 0x15f98;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_90008_CROSSBOW, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_90008_CROSSBOW, MALE, HUMHEADWITHOUTPONY, FACE_P_MAILOR, 0, 0x8aa5);
    EQUIPITEM(MIL_90008_CROSSBOW, 0x9b2f);
    CREATEINVITEMS(MIL_90008_CROSSBOW, 0x8650, 30);
    B_GIVENPCTALENTS(MIL_90008_CROSSBOW);
    B_SETFIGHTSKILLS(MIL_90008_CROSSBOW, 45);
    DAILY_ROUTINE = RTN_START_90008;
}

func void RTN_START_90008() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART4_MOB_53");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART4_MOB_53");
}

func void RTN_TOT_90008() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, TOT);
    TA_STAYSTRAIGHT(9, 0, 8, 0, TOT);
}

