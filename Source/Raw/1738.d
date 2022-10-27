instance VLK_6021_GUY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 0x1785;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6021_GUY, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6021_GUY, MALE, HUMHEADPSIONIC, FACE_B_CITIZEN35, 3, 0x8ae1);
    MDL_APPLYOVERLAYMDS(VLK_6021_GUY, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6021_GUY);
    B_GIVENPCTALENTS(VLK_6021_GUY);
    B_SETFIGHTSKILLS(VLK_6021_GUY, 40);
    DAILY_ROUTINE = RTN_START_6021;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6021() {
    TA_STAND_DRINKING(8, 0, 22, 0, "PARTM4_BATHS_WATER_SMALLTALK_01");
    TA_STAND_DRINKING(22, 0, 8, 0, "PARTM4_BATHS_WATER_SMALLTALK_01");
}

