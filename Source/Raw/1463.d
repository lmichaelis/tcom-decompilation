instance VLK_6390_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 0x18f6;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6390_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6390_CITIZEN, MALE, HUMHEADPSIONIC, FACE_N_CITIZEN80, 1, 0x8adf);
    MDL_APPLYOVERLAYMDS(VLK_6390_CITIZEN, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6390_CITIZEN);
    B_GIVENPCTALENTS(VLK_6390_CITIZEN);
    B_SETFIGHTSKILLS(VLK_6390_CITIZEN, 35);
    DAILY_ROUTINE = RTN_START_6390;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6390() {
    TA_SMALLTALK(7, 35, 21, 45, "PARTM4_SMALLTALK_01");
    TA_SMALLTALK(21, 45, 7, 35, "TOT2");
}

