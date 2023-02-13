instance SLD_13714_ASTOL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_ASTOL;
    GUILD = GIL_SLD;
    ID = 13714;
    VOICE = 66;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_13714_ASTOL, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_13714_ASTOL, MALE, HUMHEADPSIONIC, FACE_N_ASTOL, 1, 35465);
    MDL_APPLYOVERLAYMDS(SLD_13714_ASTOL, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13714_ASTOL);
    B_GIVENPCTALENTS(SLD_13714_ASTOL);
    B_SETFIGHTSKILLS(SLD_13714_ASTOL, 30);
    DAILY_ROUTINE = RTN_START_13714;
}

func void RTN_START_13714() {
    TA_SMOKE_JOINT(7, 0, 11, 0, "PART7_MINE_STAND_02");
    TA_STAND_EATING(11, 0, 15, 0, "PART7_MINE_STAND_04");
    TA_SIT_THRONE_NEW(15, 0, 22, 0, "PART7_MINE_THRONE_02");
    TA_STAND_DRINKING(22, 0, 7, 0, "PART7_MINE_STAND_02");
}

func void RTN_BLOCKPATH_13714() {
    TA_STAYSTRAIGHT(7, 0, 11, 0, "PART7_MINE_120");
    TA_STAYSTRAIGHT(11, 0, 7, 0, "PART7_MINE_120");
}

func void RTN_TOT_13714() {
    TA_STAND_WP(8, 0, 13, 0, TOT2);
    TA_STAND_WP(13, 0, 8, 0, TOT2);
}

