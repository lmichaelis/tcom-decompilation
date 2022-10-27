instance VLK_15000_VOLKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_VOLKER;
    GUILD = GIL_VLK;
    ID = 0x3a98;
    VOICE = 51;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_15000_VOLKER, 60);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_15000_VOLKER, MALE, HUMHEADBALD, FACE_N_VOLKER, BODYTEX_N, 0x8ad2);
    MDL_APPLYOVERLAYMDS(VLK_15000_VOLKER, HUMANSLEADERMDS);
    B_CREATEAMBIENTINV(VLK_15000_VOLKER);
    EQUIPITEM(VLK_15000_VOLKER, 0x8531);
    B_GIVENPCTALENTS(VLK_15000_VOLKER);
    B_SETFIGHTSKILLS(VLK_15000_VOLKER, 100);
    DAILY_ROUTINE = RTN_START_15000;
}

func void RTN_START_15000() {
    TA_SIT_CHAIR_EAT(8, 0, 8, 45, "PARTM4_VOLKER_HOUSE_CHAIR_01");
    TA_COUNTING(8, 45, 12, 45, "PARTM4_VOLKER_HOUSE_24");
    TA_READ_BOOKSTAND(12, 45, 14, 50, "PARTM4_VOLKER_HOUSE_BOOK");
    TA_STAND_LEADER(14, 50, 17, 10, "PARTM4_VOLKER_HOUSE_FIREPLACE");
    TA_SIT_THRONE(17, 10, 19, 25, "PARTM4_VOLKER_HOUSE_SOFA_01");
    TA_READ_BOOKSTAND(19, 25, 21, 0, "PARTM4_VOLKER_HOUSE_BOOK");
    TA_SIT_THRONE_READING(21, 0, 22, 15, "PARTM4_VOLKER_HOUSE_SOFA_01");
    TA_SLEEP(22, 15, 8, 0, "PARTM4_VOLKER_HOUSE_BED");
}

func void RTN_VOLKERTRIALOG_15000() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PARTM4_VOLKER_HOUSE_FIREPLACE");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PARTM4_VOLKER_HOUSE_FIREPLACE");
}

func void RTN_TOT_15000() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

instance VLK_15000_VOLKER_Q105(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_VOLKER;
    GUILD = GIL_VLK;
    ID = 0x3a9a;
    VOICE = 51;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_15000_VOLKER_Q105, 60);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(VLK_15000_VOLKER_Q105, 0x8531);
    B_SETNPCVISUAL(VLK_15000_VOLKER_Q105, MALE, HUMHEADBALD, FACE_N_VOLKER, BODYTEX_N, 0x8ad2);
    MDL_APPLYOVERLAYMDS(VLK_15000_VOLKER_Q105, HUMANSLEADERMDS);
    B_GIVENPCTALENTS(VLK_15000_VOLKER_Q105);
    B_SETFIGHTSKILLS(VLK_15000_VOLKER_Q105, 100);
    DAILY_ROUTINE = RTN_START_15002;
}

func void RTN_START_15002() {
    TA_SMALLTALK(8, 0, 8, 45, "VILLAGE_Q105_VOLKER_01");
    TA_SMALLTALK(8, 45, 8, 0, "VILLAGE_Q105_VOLKER_01");
}

func void RTN_Q105_GOTOCITY_15002() {
    TA_SMALLTALK(8, 0, 8, 45, "PART2_Q105_VOLKER_01");
    TA_SMALLTALK(8, 45, 8, 0, "PART2_Q105_VOLKER_01");
}

func void RTN_TOT_15002() {
    TA_SMALLTALK(8, 0, 8, 45, TOT2);
    TA_SMALLTALK(8, 45, 8, 0, TOT2);
}

