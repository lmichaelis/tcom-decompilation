instance VLK_13934_Q308_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 13934;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13934_Q308_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_13934_Q308_CITIZEN, MALE, HUMHEADBALD, FACE_N_CITIZEN126, 1, 35551);
    MDL_APPLYOVERLAYMDS(VLK_13934_Q308_CITIZEN, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13934_Q308_CITIZEN);
    B_GIVENPCTALENTS(VLK_13934_Q308_CITIZEN);
    B_SETFIGHTSKILLS(VLK_13934_Q308_CITIZEN, 20);
    DAILY_ROUTINE = RTN_START_13934;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_13934() {
    TA_SMALLTALK(8, 0, 22, 0, "PARTM4_CITIZEN_Q308_01");
    TA_SMALLTALK(22, 0, 8, 0, "PARTM4_CITIZEN_Q308_01");
}

func void RTN_TOT_13934() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

