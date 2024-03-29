instance MIL_13644_GUARDSMANSMITH(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SMITHER;
    GUILD = GIL_MIL;
    ID = 13644;
    VOICE = 49;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_13644_GUARDSMANSMITH, 40);
    B_SETNPCVISUAL(MIL_13644_GUARDSMANSMITH, MALE, HUMHEADPYMONTENEU, FACE_N_GUARDSMAN_01, 1, 35450);
    MDL_APPLYOVERLAYMDS(MIL_13644_GUARDSMANSMITH, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13644_GUARDSMANSMITH);
    B_GIVENPCTALENTS(MIL_13644_GUARDSMANSMITH);
    B_SETFIGHTSKILLS(MIL_13644_GUARDSMANSMITH, 45);
    DAILY_ROUTINE = RTN_START_13644;
    AIVAR[70] = NPC_AMB_ROYALGUARD;
}

func void RTN_START_13644() {
    TA_ARMORINSPECT(7, 0, 12, 0, "HARBOUR_HOUSE01_04");
    TA_WORKTABLE(12, 0, 16, 0, "HARBOUR_HOUSE01_04");
    TA_ARMORINSPECT(16, 0, 19, 0, "HARBOUR_HOUSE01_04");
    TA_WORKTABLE(19, 0, 22, 30, "HARBOUR_HOUSE01_04");
    TA_SLEEP(22, 30, 7, 0, "HARBOUR_HOUSE01_BED_03");
}

