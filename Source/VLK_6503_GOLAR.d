instance VLK_6503_GOLAR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_CLERK;
    GUILD = GIL_VLK;
    ID = 6503;
    VOICE = 28;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6503_GOLAR, 30);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_6503_GOLAR, MALE, HUMHEADPONY, FACE_B_GOLAR, 3, 35533);
    MDL_APPLYOVERLAYMDS(VLK_6503_GOLAR, HUMANSLEADERMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6503_GOLAR);
    B_GIVENPCTALENTS(VLK_6503_GOLAR);
    B_SETFIGHTSKILLS(VLK_6503_GOLAR, 40);
    DAILY_ROUTINE = RTN_START_6503;
    AIVAR[74] = NPC_CITY_IAMFROMOLDCITY;
    AIVAR[70] = NPC_AMB_CITY_OLDCITY;
}

func void RTN_START_6503() {
    TA_OBSERVE(7, 0, 22, 0, "PARTM5_CITYHALL_14");
    TA_OBSERVE(22, 0, 7, 0, "PARTM5_CITYHALL_14");
}

func void RTN_Q308_6503() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PARTM5_CITYHALL_GOLAR");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PARTM5_CITYHALL_GOLAR");
}

func void RTN_TOWNHALL_6503() {
    TA_SMALLTALK(8, 0, 22, 0, "PARTM5_CITYHALL_22");
    TA_SMALLTALK(22, 0, 8, 0, "PARTM5_CITYHALL_22");
}

func void RTN_TOWNHALLCUTSCENE_6503() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PARTM5_ANGRYMOB_GOLAR");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PARTM5_ANGRYMOB_GOLAR");
}

