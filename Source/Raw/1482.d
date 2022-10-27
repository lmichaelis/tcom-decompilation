instance VLK_6249_KAF(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_KAF;
    GUILD = GIL_VLK;
    ID = 0x1869;
    VOICE = 58;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6249_KAF, 15);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6249_KAF, MALE, HUMHEADPSIONICPONY, FACE_N_KAF, 1, 0x8ae1);
    MDL_APPLYOVERLAYMDS(VLK_6249_KAF, HUMANSPOCKETWALKMDS);
    B_CREATEAMBIENTINV(VLK_6249_KAF);
    B_GIVENPCTALENTS(VLK_6249_KAF);
    B_SETFIGHTSKILLS(VLK_6249_KAF, 40);
    DAILY_ROUTINE = RTN_TOT_6249;
}

func void RTN_START_6249() {
    TA_SIT_BENCH(8, 0, 18, 0, "PARTM4_BATHS_ROOM_BENCH_08");
    TA_SIT_BENCH(18, 0, 8, 0, "PARTM4_BATHS_ROOM_BENCH_08");
}

func void RTN_GUIDE_6249() {
    TA_GUIDE_PLAYER(8, 0, 18, 0, RNG_TRAP07_WAYPOINT);
    TA_GUIDE_PLAYER(18, 0, 8, 0, RNG_TRAP07_WAYPOINT);
}

func void RTN_TOT_6249() {
    TA_STAND_ARMSCROSSED(8, 0, 18, 0, TOT);
    TA_STAND_ARMSCROSSED(18, 0, 8, 0, TOT);
}

