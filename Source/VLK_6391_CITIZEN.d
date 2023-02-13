instance VLK_6391_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 6391;
    VOICE = 31;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6391_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6391_CITIZEN, FEMALE, HUMHEADBABE1, FACE_WN_CITIZEN81, 5, 33901);
    MDL_APPLYOVERLAYMDS(VLK_6391_CITIZEN, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6391_CITIZEN);
    B_GIVENPCTALENTS(VLK_6391_CITIZEN);
    B_SETFIGHTSKILLS(VLK_6391_CITIZEN, 35);
    DAILY_ROUTINE = RTN_START_6391;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6391() {
    TA_SMALLTALK(7, 35, 21, 45, "PARTM4_SMALLTALK_02");
    TA_SMALLTALK(21, 45, 7, 35, "TOT2");
}

