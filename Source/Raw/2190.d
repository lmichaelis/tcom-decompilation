instance BDT_2263_FELLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_FELLER;
    GUILD = GIL_NONE;
    ID = 0x8d7;
    VOICE = 45;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_2263_FELLER, 10);
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    CREATEINVITEMS(BDT_2263_FELLER, 0x9011, 1);
    EQUIPITEM(BDT_2263_FELLER, 0x84cd);
    B_SETNPCVISUAL(BDT_2263_FELLER, MALE, HUMHEADWITHOUTPONY, FACE_N_FELLER, 1, 0x8a7b);
    MDL_APPLYOVERLAYMDS(BDT_2263_FELLER, HUMANSHURTMDS);
    B_SETFIGHTSKILLS(BDT_2263_FELLER, 10);
    B_CREATEAMBIENTINV(BDT_2263_FELLER);
    DAILY_ROUTINE = RTN_START_2263;
}

func void RTN_START_2263() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PART3_PATH_17");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PART3_PATH_17");
}

func void RTN_AMBUSH_2263() {
    TA_GUIDE_PLAYER_NOSOUND(7, 0, 22, 0, "PART3_PATH_07");
    TA_GUIDE_PLAYER_NOSOUND(22, 0, 7, 0, "PART3_PATH_07");
}

func void RTN_TOT_2263() {
    TA_DANCE(7, 0, 22, 0, TOT);
    TA_DANCE(22, 0, 7, 0, TOT);
}
