instance VLK_13829_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_GARDENER;
    GUILD = GIL_VLK;
    ID = 13829;
    VOICE = 61;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13829_WORKER, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_13829_WORKER, MALE, HUMHEADBALD, FACE_P_GARDENER02, 0, 35578);
    MDL_APPLYOVERLAYMDS(VLK_13829_WORKER, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13829_WORKER);
    B_GIVENPCTALENTS(VLK_13829_WORKER);
    B_SETFIGHTSKILLS(VLK_13829_WORKER, 20);
    DAILY_ROUTINE = RTN_START_13829;
    AIVAR[70] = NPC_AMB_CITY_WORKER;
}

func void RTN_START_13829() {
    TA_PLUNDER(7, 30, 9, 20, "PARTM3_GARDEN_01");
    TA_PLUNDER(9, 20, 11, 10, "PARTM3_GARDEN_02");
    TA_PLUNDER(11, 10, 13, 20, "PARTM3_GARDEN_03");
    TA_PLUNDER(13, 20, 17, 0, "PARTM3_GARDEN_01");
    TA_PLUNDER(17, 0, 19, 10, "PARTM3_GARDEN_02");
    TA_PLUNDER(19, 10, 21, 0, "PARTM3_GARDEN_03");
    TA_SLEEP(21, 0, 7, 30, "HARBOUR_HOUSE10_BED_03");
}

func void RTN_Q206_FINBARBODY_13829() {
    TA_PLUNDER(7, 0, 22, 0, "PARTM3_GARDEN_03");
    TA_PLUNDER(22, 0, 7, 0, TOT2);
}

