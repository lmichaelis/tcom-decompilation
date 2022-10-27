instance NONE_13542_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARBEITER;
    GUILD = GIL_NONE;
    ID = 0x34e6;
    VOICE = 60;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13542_WORKER, 28);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13542_WORKER, MALE, HUMHEADPYMONTENEU, FACE_L_WORKER36, 2, 0x8afa);
    MDL_APPLYOVERLAYMDS(NONE_13542_WORKER, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13542_WORKER);
    B_GIVENPCTALENTS(NONE_13542_WORKER);
    B_SETFIGHTSKILLS(NONE_13542_WORKER, 30);
    DAILY_ROUTINE = RTN_START_13542;
}

func void RTN_START_13542() {
    TA_REPAIR_HUT(8, 0, 22, 0, "HARBOUR_SHIPYARD_QA401_WORKER_02");
    TA_REPAIR_HUT(22, 0, 8, 0, "HARBOUR_SHIPYARD_QA401_WORKER_02");
}

func void RTN_TOT_13542() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

func void RTN_FLEE_13542() {
    TA_FLEE_NOIQ(8, 0, 22, 0, TOT);
    TA_FLEE_NOIQ(22, 0, 8, 0, TOT);
}
