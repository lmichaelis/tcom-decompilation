instance VLK_13394_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_VOLKERLISTENER;
    GUILD = GIL_VLK;
    ID = 13394;
    VOICE = 3;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13394_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_13394_CITIZEN, MALE, HUMHEADTHIEF, FACE_N_LISTENER01, 1, 35542);
    MDL_APPLYOVERLAYMDS(VLK_13394_CITIZEN, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13394_CITIZEN);
    B_GIVENPCTALENTS(VLK_13394_CITIZEN);
    B_SETFIGHTSKILLS(VLK_13394_CITIZEN, 45);
    DAILY_ROUTINE = RTN_START_13394;
    AIVAR[74] = NPC_SQ505_IMCITIZEN_M7;
}

func void RTN_START_13394() {
    TA_IDLE(7, 0, 21, 0, "SLUMS_VOLKERLISTENER02_01");
    TA_IDLE(21, 0, 7, 0, TOT2);
}

func void RTN_TOT_13394() {
    TA_IDLE(7, 0, 21, 0, TOT);
    TA_IDLE(21, 0, 7, 0, TOT);
}
