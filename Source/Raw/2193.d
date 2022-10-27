instance VLK_2261_BODOWIN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_BODOWIN;
    GUILD = GIL_BAU;
    ID = 0x8d5;
    VOICE = 9;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_2261_BODOWIN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_2261_BODOWIN, MALE, HUMHEADBALD, FACE_N_BODOWIN, 1, 0x8ada);
    MDL_APPLYOVERLAYMDS(VLK_2261_BODOWIN, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(VLK_2261_BODOWIN);
    B_SETFIGHTSKILLS(VLK_2261_BODOWIN, 30);
    DAILY_ROUTINE = RTN_ATWORK_2261;
}

func void RTN_START_2261() {
    TA_STAND_EATING(8, 0, 9, 0, "PART3_BODOWINHOUSE_PATH03");
    TA_READ_BOOKSTAND(9, 0, 11, 0, "PART3_BODOWINHOUSE_BOOKSTAND");
    TA_POTION_ALCHEMY(11, 0, 17, 0, "PART3_BODOWINHOUSE_LABPSI");
    TA_STAND_EATING(17, 0, 18, 0, "PART3_BODOWINHOUSE_PATH03");
    TA_STUDY_WP(18, 0, 19, 0, "PART3_BODOWINHOUSE_BOOKSTAND");
    TA_POTION_ALCHEMY(19, 0, 1, 0, "PART3_BODOWINHOUSE_LABPSI");
    TA_SIT_THRONE_READING(1, 0, 2, 0, "PART3_BODOWINHOUSE_ARMCHAIR");
    TA_SLEEP(2, 0, 8, 0, "PART3_BODOWINHOUSE_BED");
}

func void RTN_Q106_WORK_2261() {
    TA_POTION_ALCHEMY_ONLYDIALOGUE(1, 0, 2, 0, "PART3_BODOWINHOUSE_LABPSI");
    TA_POTION_ALCHEMY_ONLYDIALOGUE(2, 0, 1, 0, "PART3_BODOWINHOUSE_LABPSI");
}

func void RTN_ATWORK_2261() {
    TA_POTION_ALCHEMY(1, 0, 2, 0, "PART3_BODOWINHOUSE_LABPSI");
    TA_POTION_ALCHEMY(2, 0, 1, 0, "PART3_BODOWINHOUSE_LABPSI");
}

func void RTN_QM302_SCAVENGER_2261() {
    TA_RUNTOWP(1, 0, 2, 0, "PART3_BODOWINHOUSE_GARDEN_PATH02");
    TA_RUNTOWP(2, 0, 1, 0, "PART3_BODOWINHOUSE_GARDEN_PATH02");
}

func void RTN_SQ509_WAIT_2261() {
    TA_STAYSTRAIGHT(1, 0, 2, 0, "PART3_BODOWINHOUSE_PATH09");
    TA_STAYSTRAIGHT(2, 0, 1, 0, "PART3_BODOWINHOUSE_PATH09");
}

func void RTN_SQ509_FOLLOW_2261() {
    TA_FOLLOW_PLAYER(1, 0, 2, 0, "PART3_BODOWINHOUSE_PATH09");
    TA_FOLLOW_PLAYER(2, 0, 1, 0, "PART3_BODOWINHOUSE_PATH09");
}

func void RTN_FLEE_2261() {
    TA_FLEE_NOIQ(1, 0, 2, 0, TOT);
    TA_FLEE_NOIQ(2, 0, 1, 0, TOT);
}

func void RTN_TOT_2261() {
    TA_POTION_ALCHEMY(1, 0, 2, 0, TOT);
    TA_POTION_ALCHEMY(2, 0, 1, 0, TOT);
}

