instance VLK_6117_GUY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 6117;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6117_GUY, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6117_GUY, MALE, HUMHEADFATBALD, FACE_N_PATRON_55, 1, 35545);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6117_GUY);
    MDL_APPLYOVERLAYMDS(VLK_6117_GUY, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(VLK_6117_GUY);
    B_SETFIGHTSKILLS(VLK_6117_GUY, 40);
    DAILY_ROUTINE = RTN_START_6117;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6117() {
    TA_STAND_GUARDING(8, 0, 12, 25, "PARTM2_MARKET_06");
    TA_SIT_BENCH(12, 25, 14, 2, "PARTM8_BENCH_09");
    TA_STAND_GUARDING(14, 2, 18, 0, "PARTM2_MARKET_06");
    TA_STAND_EATING(18, 0, 20, 25, "PARTM8_PATH_51");
    TA_STAND_EATING(20, 25, 8, 0, "TOT2");
}

