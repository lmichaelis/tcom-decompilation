instance VLK_6406_FAHDA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_FADHA;
    GUILD = GIL_VLK;
    ID = 6406;
    VOICE = 33;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6406_FAHDA, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6406_FAHDA, FEMALE, HUMHEADBABE6, FACE_WB_FAHDA, 7, 33900);
    MDL_APPLYOVERLAYMDS(VLK_6406_FAHDA, HUMANSSELLERMDS);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(VLK_6406_FAHDA);
    B_SETFIGHTSKILLS(VLK_6406_FAHDA, 40);
    DAILY_ROUTINE = RTN_START_6406;
    AIVAR[74] = NPC_SQ225_KNOWGERHARD;
}

func void RTN_START_6406() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PARTM3_CHEMIST_FADHA");
    TA_SLEEP(22, 0, 8, 0, "PARTM3_CHEMIST_BED_01");
}

