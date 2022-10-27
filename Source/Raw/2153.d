instance NONE_9101_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARBEITER;
    GUILD = GIL_NONE;
    ID = 0x238d;
    VOICE = 12;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_9101_WORKER, 18);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[15] = TRUE;
    B_SETNPCVISUAL(NONE_9101_WORKER, MALE, HUMHEADPONY, FACE_N_EARL, 1, 0x8af4);
    B_CREATEAMBIENTINV(NONE_9101_WORKER);
    MDL_APPLYOVERLAYMDS(NONE_9101_WORKER, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_9101_WORKER);
    B_GIVENPCTALENTS(NONE_9101_WORKER);
    B_SETFIGHTSKILLS(NONE_9101_WORKER, 35);
    DAILY_ROUTINE = RTN_START_9101;
}

func void RTN_START_9101() {
    TA_REPAIR_HUT(8, 0, 12, 0, "PART2_SEWERS_REPAIR");
    TA_REPAIR_HUT(12, 0, 8, 0, "PART2_SEWERS_REPAIR");
}

func void RTN_TOT_9101() {
    TA_REPAIR_HUT(8, 0, 12, 0, TOT);
    TA_REPAIR_HUT(12, 0, 8, 0, TOT);
}
