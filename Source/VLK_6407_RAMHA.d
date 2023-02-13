instance VLK_6407_RAMHA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_RAMHA;
    GUILD = GIL_VLK;
    ID = 6407;
    VOICE = 16;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6407_RAMHA, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6407_RAMHA, FEMALE, HUMHEADBABE4, FACE_WB_RAMHA, 7, 35601);
    MDL_APPLYOVERLAYMDS(VLK_6407_RAMHA, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6407_RAMHA);
    B_GIVENPCTALENTS(VLK_6407_RAMHA);
    B_SETFIGHTSKILLS(VLK_6407_RAMHA, 40);
    DAILY_ROUTINE = RTN_START_6407;
}

func void RTN_START_6407() {
    TA_POTION_ALCHEMY(7, 0, 22, 0, "PARTM3_CHEMIST_LAB_01");
    TA_PLUNDER(22, 0, 0, 0, "PARTM3_CHEMIST_PLUNDER_01");
    TA_SIT_THRONE(0, 0, 7, 0, "PARTM3_CHEMIST_FADHA");
}

func void RTN_WORK_6407() {
    TA_POTION_ALCHEMY(7, 0, 22, 0, "PARTM3_CHEMIST_LAB_01");
    TA_POTION_ALCHEMY(22, 0, 0, 0, "PARTM3_CHEMIST_LAB_01");
    TA_POTION_ALCHEMY(0, 0, 7, 0, "PARTM3_CHEMIST_LAB_01");
}

func void RTN_QA202_NEARMINE_6407() {
    TA_SEARCH(7, 0, 22, 0, "PART7_AQ202_RAMHA");
    TA_SEARCH(22, 0, 7, 0, "PART7_AQ202_RAMHA");
}

func void RTN_QA202_GUIDE_6407() {
    TA_GUIDE_PLAYER(7, 0, 22, 0, "PART7_PATH_26");
    TA_GUIDE_PLAYER(22, 0, 7, 0, "PART7_PATH_26");
}

func void RTN_QA202_PLANT_6407() {
    TA_PLUNDER_RAMHA(7, 0, 22, 0, "PART7_AQ202_RAMHA_PLANT");
    TA_PLUNDER_RAMHA(22, 0, 7, 0, "PART7_AQ202_RAMHA_PLANT");
}

func void RTN_QA202_GOTPLANT_6407() {
    TA_SEARCH(7, 0, 22, 0, "PART7_AQ202_RAMHA_PLANT");
    TA_SEARCH(22, 0, 7, 0, "PART7_AQ202_RAMHA_PLANT");
}

func void RTN_QA202_SLEEP_6407() {
    TA_SLEEP_RAMHA(7, 0, 22, 0, "PART7_AQ202_RAMHA_PLANT");
    TA_SLEEP_RAMHA(22, 0, 7, 0, "PART7_AQ202_RAMHA_PLANT");
}

func void RTN_QA202_TIRED_6407() {
    TA_BREATH(7, 0, 22, 0, "PART7_AQ202_RAMHA_PLANT");
    TA_BREATH(22, 0, 7, 0, "PART7_AQ202_RAMHA_PLANT");
}

