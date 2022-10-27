instance PIR_1328_ARENAGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ADDON_PIRAT;
    GUILD = GIL_PIR;
    ID = 0x530;
    VOICE = 57;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(PIR_1328_ARENAGUARD, 33);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(PIR_1328_ARENAGUARD, MALE, HUMHEADBALD, FACE_B_ARENAGUARD, 3, 0x8322);
    MDL_APPLYOVERLAYMDS(PIR_1328_ARENAGUARD, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(PIR_1328_ARENAGUARD);
    B_GIVENPCTALENTS(PIR_1328_ARENAGUARD);
    B_SETFIGHTSKILLS(PIR_1328_ARENAGUARD, 60);
    DAILY_ROUTINE = RTN_START_1328;
}

func void RTN_START_1328() {
    TA_STAND_GUARDING(0, 0, 7, 0, "P17_HAVEN_ARENA_GUARD_01");
    TA_STAND_GUARDING(7, 0, 0, 0, "P17_HAVEN_ARENA_GUARD_01");
}

func void RTN_TOURNAMENT_1328() {
    TA_STAND_GUARDING_TILL(0, 0, 7, 0, "P17_HAVEN_ARENA_INSIDE_02");
    TA_STAND_GUARDING_TILL(7, 0, 0, 0, "P17_HAVEN_ARENA_INSIDE_02");
}

func void RTN_TOT_1328() {
    TA_STAND_GUARDING(0, 0, 7, 0, TOT);
    TA_STAND_GUARDING(7, 0, 0, 0, TOT);
}

