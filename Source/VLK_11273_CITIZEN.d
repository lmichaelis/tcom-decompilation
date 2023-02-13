instance VLK_11273_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 11273;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_11273_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_11273_CITIZEN, MALE, HUMHEADBALD, FACE_P_CITIZEN136, 0, 35553);
    B_CREATEAMBIENTINV(VLK_11273_CITIZEN);
    B_GIVENPCTALENTS(VLK_11273_CITIZEN);
    B_SETFIGHTSKILLS(VLK_11273_CITIZEN, 30);
    DAILY_ROUTINE = RTN_START_11273;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_11273() {
    TA_SIT_BENCH(8, 0, 9, 0, "PARTM4_BATHS_ROOM_BENCH_02");
    TA_SIT_BENCH(9, 0, 8, 0, "PARTM4_BATHS_ROOM_BENCH_02");
}

