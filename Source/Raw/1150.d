instance VLK_13837_TRAVELER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_TRAVELLER;
    GUILD = GIL_VLK;
    ID = 0x360d;
    VOICE = 28;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13837_TRAVELER, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_13837_TRAVELER, MALE, HUMHEADFATBALD, FACE_N_PATRON_13, 1, 0x8a55);
    MDL_APPLYOVERLAYMDS(VLK_13837_TRAVELER, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13837_TRAVELER);
    B_GIVENPCTALENTS(VLK_13837_TRAVELER);
    B_SETFIGHTSKILLS(VLK_13837_TRAVELER, 20);
    DAILY_ROUTINE = RTN_START_13837;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_13837() {
    TA_SIT_BENCH(7, 10, 15, 13, "PARTM1_BENCH_07");
    TA_THROWBAG(15, 13, 17, 2, "PARTM4_STAND_01");
    TA_SIT_BENCH(17, 2, 21, 0, "PARTM1_BENCH_07");
    TA_SLEEP(21, 0, 7, 10, "PARTM1_HOUSE02_BED_03");
}

