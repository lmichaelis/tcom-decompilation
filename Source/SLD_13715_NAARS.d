instance SLD_13715_NAARS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_NAARS;
    GUILD = GIL_SLD;
    ID = 13715;
    VOICE = 60;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_13715_NAARS, 32);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_13715_NAARS, MALE, HUMHEADBALD, FACE_N_NAARS, 1, 35465);
    MDL_APPLYOVERLAYMDS(SLD_13715_NAARS, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13715_NAARS);
    B_GIVENPCTALENTS(SLD_13715_NAARS);
    B_SETFIGHTSKILLS(SLD_13715_NAARS, 40);
    DAILY_ROUTINE = RTN_START_13715;
}

func void RTN_START_13715() {
    TA_LEAN(7, 0, 11, 0, "PART7_MINE_LEAN_02");
    TA_LEAN(11, 0, 7, 0, "PART7_MINE_LEAN_02");
}

func void RTN_TOT_13715() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}
