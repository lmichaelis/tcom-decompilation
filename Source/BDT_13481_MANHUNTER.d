instance BDT_13481_MANHUNTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MANHUNTER;
    GUILD = GIL_DMT;
    ID = 13481;
    VOICE = 26;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13481_MANHUNTER, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13481_MANHUNTER, MALE, HUMHEADTHIEF, FACE_N_MANHUNTER53, BODYTEX_N, 35479);
    MDL_APPLYOVERLAYMDS(BDT_13481_MANHUNTER, HUMANS1HST1);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13481_MANHUNTER);
    B_GIVENPCTALENTS(BDT_13481_MANHUNTER);
    B_SETFIGHTSKILLS(BDT_13481_MANHUNTER, 60);
    DAILY_ROUTINE = RTN_START_13481;
}

func void RTN_START_13481() {
    TA_FOLLOW_PLAYER(8, 0, 9, 0, "PART15_PATH_87A");
    TA_FOLLOW_PLAYER(9, 0, 8, 0, "PART15_PATH_87A");
}

