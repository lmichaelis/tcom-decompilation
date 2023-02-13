instance VLK_6430_ADRIEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_ADRIEN;
    GUILD = GIL_VLK;
    ID = 6430;
    VOICE = 37;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6430_ADRIEN, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6430_ADRIEN, MALE, HUMHEADBALD, FACE_P_ADRIEN, 0, 35532);
    MDL_APPLYOVERLAYMDS(VLK_6430_ADRIEN, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(VLK_6430_ADRIEN);
    B_SETFIGHTSKILLS(VLK_6430_ADRIEN, 50);
    DAILY_ROUTINE = RTN_START_6430;
    AIVAR[74] = NPC_CITY_IAMFROMOLDCITY;
}

func void RTN_START_6430() {
    TA_JEWELER(7, 0, 21, 30, "PARTM5_JEWLERY_TABLE_02");
    TA_SLEEP(21, 30, 7, 0, "PARTM5_JEWLERY_BED_02");
}

