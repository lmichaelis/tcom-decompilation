instance MIL_13315_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 13315;
    VOICE = 52;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_13315_MILITIA, 30);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(MIL_13315_MILITIA, MALE, HUMHEADTHIEF, FACE_P_MILITIA82, BODYTEX_N, 35488);
    MDL_APPLYOVERLAYMDS(MIL_13315_MILITIA, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13315_MILITIA);
    B_GIVENPCTALENTS(MIL_13315_MILITIA);
    B_SETFIGHTSKILLS(MIL_13315_MILITIA, 50);
    DAILY_ROUTINE = RTN_START_13315;
}

func void RTN_START_13315() {
    TA_OBSERVE(7, 0, 22, 0, "PARTM3_PATH_173");
    TA_OBSERVE(22, 0, 7, 0, "PARTM3_PATH_173");
}

func void RTN_TOT_13315() {
    TA_OBSERVE(8, 0, 22, 0, TOT);
    TA_OBSERVE(22, 0, 8, 0, TOT);
}
