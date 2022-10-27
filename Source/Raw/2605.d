instance BAU_716_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 716;
    VOICE = 6;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_716_FARMER, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BAU_716_FARMER, MALE, HUMHEADPSIONIC, FACE_B_ERWALD, 3, 0x8af3);
    MDL_APPLYOVERLAYMDS(BAU_716_FARMER, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_716_FARMER);
    B_GIVENPCTALENTS(BAU_716_FARMER);
    B_SETFIGHTSKILLS(BAU_716_FARMER, 15);
    DAILY_ROUTINE = RTN_START_716;
    AIVAR[74] = NPC_SILBACH_IAMFARMER;
    AIVAR[70] = NPC_AMB_SILBACH;
}

func void RTN_START_716() {
    TA_PICK_FP(8, 0, 14, 0, "VILLAGE_TREE_03");
    TA_SIT_BENCH(14, 0, 16, 0, "VILLAGE_PATH_96");
    TA_SIT_BENCH_DRINK(16, 0, 18, 0, "VILLAGE_PATH_96");
    TA_SIT_CHAIR(18, 0, 8, 0, "VILLAGE_PUB_03");
}

func void RTN_TOT_716() {
    TA_STAYSTRAIGHT(8, 0, 11, 0, TOT);
    TA_STAYSTRAIGHT(11, 0, 8, 0, TOT);
}
