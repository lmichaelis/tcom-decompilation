instance VLK_13815_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 0x35f7;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13815_CITIZEN, 15);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_13815_CITIZEN, MALE, HUMHEADFIGHTER, FACE_N_PATRON_03, 1, 0x8acb);
    MDL_APPLYOVERLAYMDS(VLK_13815_CITIZEN, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13815_CITIZEN);
    B_GIVENPCTALENTS(VLK_13815_CITIZEN);
    B_SETFIGHTSKILLS(VLK_13815_CITIZEN, 20);
    DAILY_ROUTINE = RTN_START_13815;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_13815() {
    TA_SMALLTALK(7, 0, 22, 30, "PARTM3_SMALLTALK_05");
    TA_SLEEP(22, 30, 7, 0, "PARTM3_HOUSE3_23");
}
