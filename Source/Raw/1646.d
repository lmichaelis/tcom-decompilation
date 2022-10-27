instance SLD_13573_SOLIS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_SOLIS;
    GUILD = GIL_SLD;
    ID = 0x3505;
    VOICE = 72;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_13573_SOLIS, 38);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_13573_SOLIS, MALE, HUMHEADTHIEF, FACE_L_SOLIS, 2, 0x8a89);
    MDL_APPLYOVERLAYMDS(SLD_13573_SOLIS, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13573_SOLIS);
    B_GIVENPCTALENTS(SLD_13573_SOLIS);
    B_SETFIGHTSKILLS(SLD_13573_SOLIS, 45);
    DAILY_ROUTINE = RTN_START_13573;
}

func void RTN_START_13573() {
    TA_COUNTING(6, 0, 17, 0, "HARBOUR_OLAF_BASEMENT_03");
    TA_COUNTING(17, 0, 6, 0, "HARBOUR_OLAF_BASEMENT_03");
}

func void RTN_TOT_13573() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}
