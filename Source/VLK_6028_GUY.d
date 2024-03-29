instance VLK_6028_GUY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BEGGAR;
    GUILD = GIL_VLK;
    ID = 6028;
    VOICE = 67;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6028_GUY, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6028_GUY, MALE, HUMHEADBALD, FACE_N_BEGGAR, 1, 35546);
    MDL_APPLYOVERLAYMDS(VLK_6028_GUY, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6028_GUY);
    B_GIVENPCTALENTS(VLK_6028_GUY);
    B_SETFIGHTSKILLS(VLK_6028_GUY, 40);
    DAILY_ROUTINE = RTN_START_6028;
    AIVAR[74] = NPC_CITY_IMFROMSLUMS;
    AIVAR[70] = NPC_AMB_CITY_SLUMS;
}

func void RTN_START_6028() {
    TA_SMALLTALK(7, 0, 22, 0, "SLUMS_SMALLTALK_01");
    TA_SIT_THRONE_READING(22, 0, 7, 0, "SLUMS_HOUSE04_04");
}

