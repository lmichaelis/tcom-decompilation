instance VLK_13404_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_VOLKERLISTENER;
    GUILD = GIL_VLK;
    ID = 13404;
    VOICE = 57;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13404_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_13404_CITIZEN, MALE, HUMHEADWITHOUTPONY, FACE_N_LISTENER12, 1, 35546);
    MDL_APPLYOVERLAYMDS(VLK_13404_CITIZEN, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13404_CITIZEN);
    B_GIVENPCTALENTS(VLK_13404_CITIZEN);
    B_SETFIGHTSKILLS(VLK_13404_CITIZEN, 45);
    DAILY_ROUTINE = RTN_START_13404;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_13404() {
    TA_IDLE(7, 0, 21, 0, "PARTM3_VOLKERLISTENER04");
    TA_IDLE(21, 0, 7, 0, TOT2);
}

func void RTN_SQ505_ANGRYMOB_13404() {
    TA_ANGRYMOB_SQ505(7, 0, 21, 0, "PARTM3_VOLKERLISTENER04");
    TA_ANGRYMOB_SQ505(21, 0, 7, 0, TOT2);
}

func void RTN_TOT_13404() {
    TA_IDLE(7, 0, 21, 0, TOT2);
    TA_IDLE(21, 0, 7, 0, TOT2);
}
