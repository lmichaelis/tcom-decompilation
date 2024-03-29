instance NONE_7005_HEKTOR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_COYOTE;
    GUILD = GIL_BDT;
    ID = 7005;
    VOICE = 42;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_7005_HEKTOR, 42);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_7005_HEKTOR, MALE, HUMHEADFATBALD, FACE_N_HEKTOR, 1, 35438);
    MDL_APPLYOVERLAYMDS(NONE_7005_HEKTOR, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_7005_HEKTOR);
    B_GIVENPCTALENTS(NONE_7005_HEKTOR);
    B_SETFIGHTSKILLS(NONE_7005_HEKTOR, 60);
    DAILY_ROUTINE = RTN_START_7005;
}

func void RTN_START_7005() {
    TA_LEAN(6, 0, 7, 0, "PART1_CAVE_IN_LEAN_01");
    TA_LEAN(7, 0, 6, 0, "PART1_CAVE_IN_LEAN_01");
}

func void RTN_QA401_FIGHT_WAIT_7005() {
    TA_STAYSTRAIGHT_NOIQ(6, 0, 20, 0, "PART1_CAVE_IN_LEAN_01");
    TA_STAYSTRAIGHT_NOIQ(20, 0, 6, 0, "PART1_CAVE_IN_LEAN_01");
}

func void RTN_QA401_FIGHT_CAVE_7005() {
    TA_PLUNDER(6, 0, 20, 0, "PART1_CAVE_IN_53");
    TA_PLUNDER(20, 0, 6, 0, "PART1_CAVE_IN_53");
}

func void RTN_QA401_FLEE_7005() {
    TA_FLEE_NOIQ(6, 0, 20, 0, TOT);
    TA_FLEE_NOIQ(20, 0, 6, 0, TOT);
}

