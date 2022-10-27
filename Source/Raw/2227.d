instance BAU_6348_YANNICK(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_YANNICK;
    GUILD = GIL_BAU;
    ID = 0x18cc;
    VOICE = 6;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_6348_YANNICK, 14);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_6348_YANNICK, MALE, HUMHEADFATBALD, FACE_N_YANNICK, 1, 0x8a43);
    MDL_APPLYOVERLAYMDS(BAU_6348_YANNICK, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_6348_YANNICK);
    B_GIVENPCTALENTS(BAU_6348_YANNICK);
    B_SETFIGHTSKILLS(BAU_6348_YANNICK, 45);
    DAILY_ROUTINE = RTN_START_6348;
    AIVAR[74] = NPC_FASTTRAVEL_IAMFISHERMAN;
}

func void RTN_START_6348() {
    TA_SIT_BENCH_DRINK(8, 0, 11, 0, "PART4_FISHERMAN_BENCH_01");
    TA_PLUNDER(11, 0, 15, 0, "PART4_FISHERMAN_88");
    TA_WASH_FP(15, 0, 16, 30, "PART4_FISHERMAN_WASH_02");
    TA_SIT_BENCH_DRINK(16, 30, 19, 0, "PART4_FISHERMAN_BENCH_01");
    TA_VOMIT(19, 0, 20, 0, "PART4_FISHERMAN_93");
    TA_SIT_BENCH(20, 0, 8, 0, "PART4_FISHERMAN_BENCH_01");
}

func void RTN_BENCH_6348() {
    TA_SIT_BENCH_DRINK(16, 0, 19, 0, "PART4_FISHERMAN_BENCH_04");
    TA_SIT_BENCH_DRINK(19, 0, 16, 0, "PART4_FISHERMAN_BENCH_04");
}

func void RTN_CUTSCENE_6348() {
    TA_STAYSTRAIGHT(7, 30, 10, 0, "PART4_FISHERMAN_CUTSCENE_02");
    TA_STAYSTRAIGHT(10, 0, 7, 30, "PART4_FISHERMAN_CUTSCENE_02");
}

func void RTN_BOAT_6348() {
    TA_GUIDE_PLAYER(7, 30, 10, 0, "PART4_FISHERMAN_106");
    TA_GUIDE_PLAYER(10, 0, 7, 30, "PART4_FISHERMAN_106");
}

func void RTN_SWAMP_6348() {
    TA_STAND_ARMSCROSSED(7, 30, 10, 0, "PART17_SWAMPBLOOD_02");
    TA_STAND_ARMSCROSSED(10, 0, 7, 30, "PART17_SWAMPBLOOD_02");
}
