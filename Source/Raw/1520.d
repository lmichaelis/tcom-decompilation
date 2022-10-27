instance VLK_14014_KATRINA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_KATRINA;
    GUILD = GIL_VLK;
    ID = 0x36be;
    VOICE = 44;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_14014_KATRINA, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_14014_KATRINA, FEMALE, HUMHEADBABEHAIR, FACE_WN_KATRINA, 5, 0x8b1d);
    MDL_APPLYOVERLAYMDS(VLK_14014_KATRINA, HUMANSSELLERMDS);
    B_GIVENPCTALENTS(VLK_14014_KATRINA);
    B_SETFIGHTSKILLS(VLK_14014_KATRINA, 45);
    DAILY_ROUTINE = RTN_START_14014;
    AIVAR[74] = NPC_CITY_IAMFROMOLDCITY;
}

func void RTN_START_14014() {
    TA_STAYSTRAIGHT(7, 0, 23, 10, "PARTM5_LEON_SELL_01");
    TA_SLEEP(23, 10, 7, 0, "PARTM5_LEON_BED_05");
}

