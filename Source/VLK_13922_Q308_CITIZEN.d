instance VLK_13922_Q308_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 13922;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13922_Q308_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_13922_Q308_CITIZEN, MALE, HUMHEADPONY, FACE_B_CITIZEN122, 3, 35546);
    MDL_APPLYOVERLAYMDS(VLK_13922_Q308_CITIZEN, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13922_Q308_CITIZEN);
    B_GIVENPCTALENTS(VLK_13922_Q308_CITIZEN);
    B_SETFIGHTSKILLS(VLK_13922_Q308_CITIZEN, 20);
    DAILY_ROUTINE = RTN_START_13922;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_13922() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PARTM2_CONTROL_25");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PARTM2_CONTROL_25");
}

func void RTN_TOT_13922() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

