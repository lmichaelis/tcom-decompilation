instance VLK_11235_SAILOR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SAILOR;
    GUILD = GIL_VLK;
    ID = 11235;
    VOICE = 6;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_11235_SAILOR, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_11235_SAILOR, MALE, HUMHEADPFEIFFERNEU, FACE_N_SAILOR03, 1, 35396);
    MDL_APPLYOVERLAYMDS(VLK_11235_SAILOR, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11235_SAILOR);
    B_GIVENPCTALENTS(VLK_11235_SAILOR);
    B_SETFIGHTSKILLS(VLK_11235_SAILOR, 40);
    DAILY_ROUTINE = RTN_START_11235;
    AIVAR[70] = NPC_AMB_CITY_SAILOR;
}

func void RTN_START_11235() {
    TA_SPYGLASS(16, 0, 18, 0, "PARTM6_SHIP01_13");
    TA_SPYGLASS(18, 0, 20, 0, "PARTM6_SHIP01_12");
    TA_STAND_GUARDING(20, 0, 22, 0, "PARTM6_SHIP01_14");
    TA_STAND_DRINKING(22, 0, 0, 0, "PARTM6_SHIP01_14");
    TA_STAND_EATING(0, 0, 1, 0, "PARTM6_SHIP01_14");
    TA_STAND_GUARDING(1, 0, 3, 0, "PARTM6_SHIP01_16");
    TA_STAND_DRINKING(3, 0, 5, 0, "PARTM6_SHIP01_16");
    TA_STAND_GUARDING(5, 0, 7, 0, "PARTM6_SHIP01_06");
    TA_STAND_DRINKING(7, 0, 9, 0, "PARTM6_SHIP01_06");
    TA_STAND_EATING(9, 0, 10, 0, "PARTM6_SHIP01_06");
    TA_STAND_GUARDING(10, 0, 12, 0, "PARTM6_SHIP01_06");
    TA_STAND_DRINKING(12, 0, 14, 0, "PARTM6_SHIP01_06");
    TA_STAND_EATING(14, 0, 16, 0, "PARTM6_SHIP01_06");
}
