instance VLK_3002_HERSHLIK(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_HERSHLIK;
    GUILD = GIL_VLK;
    ID = 3002;
    VOICE = 22;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_3002_HERSHLIK, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_3002_HERSHLIK, MALE, HUMHEADPSIONIC, FACE_N_HERSHLIK, 1, 35549);
    MDL_APPLYOVERLAYMDS(VLK_3002_HERSHLIK, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(VLK_3002_HERSHLIK);
    B_SETFIGHTSKILLS(VLK_3002_HERSHLIK, 30);
    DAILY_ROUTINE = RTN_START_3002;
    AIVAR[74] = NPC_SQ225_KNOWGERHARD;
}

func void RTN_START_3002() {
    TA_POTION_ALCHEMY(7, 0, 23, 0, "PARTM2_PATH_99");
    TA_SLEEP(23, 0, 7, 0, "PARTM2_PATH_96");
}

func void RTN_PQ104_SEEDS_GUIDE_3002() {
    TA_GUIDE_PLAYER(10, 0, 14, 0, "PARTM2_PATH_78");
    TA_GUIDE_PLAYER(14, 0, 10, 0, "PARTM2_PATH_78");
}

func void RTN_PQ104_SEEDS_3002() {
    TA_WAITING(10, 0, 14, 0, "PARTM2_PATH_78");
    TA_WAITING(14, 0, 10, 0, "PARTM2_PATH_78");
}

func void RTN_WORK_3002() {
    TA_POTION_ALCHEMY(8, 0, 22, 0, "PARTM2_PATH_99");
    TA_POTION_ALCHEMY(22, 0, 8, 0, "PARTM2_PATH_99");
}

