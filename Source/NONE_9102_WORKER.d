instance NONE_9102_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARBEITER;
    GUILD = GIL_NONE;
    ID = 9102;
    VOICE = 66;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_9102_WORKER, 18);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[15] = TRUE;
    B_SETNPCVISUAL(NONE_9102_WORKER, MALE, HUMHEADBALD, FACE_N_LAURENTIS, 1, 35578);
    B_CREATEAMBIENTINV(NONE_9102_WORKER);
    MDL_APPLYOVERLAYMDS(NONE_9102_WORKER, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_9102_WORKER);
    B_GIVENPCTALENTS(NONE_9102_WORKER);
    B_SETFIGHTSKILLS(NONE_9102_WORKER, 35);
    DAILY_ROUTINE = RTN_START_9102;
}

func void RTN_START_9102() {
    TA_WAITING(8, 0, 12, 0, "PART2_SEWERS_WATCH");
    TA_WAITING(12, 0, 8, 0, "PART2_SEWERS_WATCH");
}

func void RTN_TOT_9102() {
    TA_WAITING(8, 0, 12, 0, TOT);
    TA_WAITING(12, 0, 8, 0, TOT);
}

