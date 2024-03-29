instance VLK_13813_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 13813;
    VOICE = 64;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13813_CITIZEN, 15);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_13813_CITIZEN, MALE, HUMHEADPONY, FACE_N_PATRON_01, 1, 35552);
    MDL_APPLYOVERLAYMDS(VLK_13813_CITIZEN, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13813_CITIZEN);
    B_GIVENPCTALENTS(VLK_13813_CITIZEN);
    B_SETFIGHTSKILLS(VLK_13813_CITIZEN, 20);
    DAILY_ROUTINE = RTN_START_13813;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_13813() {
    TA_COUNTING(6, 0, 12, 0, "PARTM4_MUSEUM_STAND_01");
    TA_SIT_BENCH(12, 0, 20, 30, "PARTM3_PATH_251");
    TA_STAND_EATING(20, 30, 22, 40, "PARTM4_TAVERN_STAND_04");
    TA_SLEEP(22, 40, 6, 0, "PARTM3_HOUSE3_19");
}

