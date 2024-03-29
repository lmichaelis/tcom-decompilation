instance VLK_11181_ANDERAS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_ANDREAS;
    GUILD = GIL_VLK;
    ID = 11181;
    VOICE = 72;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_11181_ANDERAS, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_11181_ANDERAS, MALE, HUMHEADBALD, FACE_B_ANDERAS, 3, 35531);
    MDL_APPLYOVERLAYMDS(VLK_11181_ANDERAS, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11181_ANDERAS);
    B_GIVENPCTALENTS(VLK_11181_ANDERAS);
    B_SETFIGHTSKILLS(VLK_11181_ANDERAS, 40);
    DAILY_ROUTINE = RTN_START_11181;
}

func void RTN_START_11181() {
    TA_READ_BOOKSTAND(8, 0, 22, 0, "PARTM5_HOUSE_ANDERAS_BOOKSTAND");
    TA_SLEEP(22, 0, 8, 0, "PARTM5_HOUSE_ANDERAS_BED_01");
}

func void RTN_SQ225_WAIT_11181() {
    TA_STAYSTRAIGHT(8, 0, 20, 0, "PARTM5_HOUSE_ANDERAS_STAND");
    TA_STAYSTRAIGHT(20, 0, 8, 0, "PARTM5_HOUSE_ANDERAS_STAND");
}

func void RTN_SQ225_TAVERN_11181() {
    TA_SIT_THRONE(8, 0, 20, 0, "PARTM4_TAVERN_THRONE_02");
    TA_SIT_THRONE(20, 0, 8, 0, "PARTM4_TAVERN_THRONE_02");
}

func void RTN_VINEYARD_11181() {
    TA_SIT_CHAIR_EAT(7, 0, 8, 0, "PART9_VINEYARD_CHAIR_01");
    TA_READ(8, 0, 12, 0, "PART9_VINEYARD_55");
    TA_TABLEBOOK(12, 0, 16, 0, "PART9_VINEYARD_55");
    TA_STAND_DRINKING(16, 0, 18, 0, "PART9_VINEYARD_STAND_04");
    TA_COUNTING(18, 0, 21, 0, "PART9_VINEYARD_COUNT_01");
    TA_WATCHVINE(21, 0, 22, 30, "PART9_VINEYARD_98");
    TA_SLEEP(22, 30, 7, 0, "PART9_VINEYARD_BED_ANDREAS");
}

func void RTN_SQ225_FINISHWAY3_VINEYARD_11181() {
    TA_TABLEBOOK(7, 0, 12, 20, "PART9_VINEYARD_55");
    TA_STAND_EATING(12, 20, 14, 5, "PART9_VINEYARD_STAND_04");
    TA_TABLEBOOK(14, 5, 17, 0, "PART9_VINEYARD_55");
    TA_SIT_BED_TIRED(17, 0, 20, 0, "PART9_VINEYARD_BED_ANDREAS");
    TA_TABLEBOOK(20, 0, 22, 30, "PART9_VINEYARD_55");
    TA_SLEEP(22, 30, 7, 0, "PART9_VINEYARD_BED_ANDREAS");
}

func void RTN_TOT_11181() {
    TA_READ(7, 0, 9, 30, TOT);
    TA_READ(9, 30, 7, 0, TOT);
}

