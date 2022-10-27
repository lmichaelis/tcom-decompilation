instance DJG_10012_ARETHE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_ARETHE;
    GUILD = GIL_DJG;
    ID = 0x271c;
    VOICE = 23;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10012_ARETHE, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(DJG_10012_ARETHE, MALE, HUMHEADBALD, FACE_B_ARTHE, 3, 0x8ac0);
    MDL_APPLYOVERLAYMDS(DJG_10012_ARETHE, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10012_ARETHE);
    B_GIVENPCTALENTS(DJG_10012_ARETHE);
    B_SETFIGHTSKILLS(DJG_10012_ARETHE, 70);
    DAILY_ROUTINE = RTN_START_10012;
}

func void RTN_START_10012() {
    TA_SIT_BENCH_DRINK(8, 0, 23, 0, "WOLFSDEN_HOUSE01_BENCH01");
    TA_SLEEP(23, 0, 8, 0, "WOLFSDEN_HOUSE01_BED02");
}

func void RTN_START2_10012() {
    TA_STAND_DRINKING(8, 0, 23, 0, "WOLFSDEN_HOUSE01_ARETHE_SQ417_STAND_01");
    TA_SLEEP(23, 0, 8, 0, "WOLFSDEN_HOUSE01_BED02");
}

func void RTN_BARRELRUN_10012() {
    TA_RUNTOWP(8, 0, 23, 0, "WOLFSDEN_PATH_21");
    TA_RUNTOWP(23, 0, 8, 0, "WOLFSDEN_PATH_21");
}

func void RTN_BARREL_10012() {
    TA_PLUNDER(8, 0, 23, 0, "WOLFSDEN_PATH_21");
    TA_PLUNDER(23, 0, 8, 0, "WOLFSDEN_PATH_21");
}

func void RTN_SQ417_WAIT_10012() {
    TA_LEAN(8, 0, 23, 0, "WOLFSDEN_WALL_SQ417_ARETHE");
    TA_LEAN(23, 0, 8, 0, "WOLFSDEN_WALL_SQ417_ARETHE");
}

func void RTN_SQ417_SLEEP_10012() {
    TA_SLEEP(8, 0, 23, 0, "WOLFSDEN_HOUSE01_BED02");
    TA_SLEEP(23, 0, 8, 0, "WOLFSDEN_HOUSE01_BED02");
}

func void RTN_SQ417_WAKEUP_10012() {
    TA_SEARCH_ONLY(8, 0, 23, 0, "WOLFSDEN_HOUSE01_ARETHE_SQ417_STAND_01");
    TA_SEARCH_ONLY(23, 0, 8, 0, "WOLFSDEN_HOUSE01_ARETHE_SQ417_STAND_01");
}

func void RTN_SQ417_SMALLTALK_10012() {
    TA_SMALLTALK(8, 0, 23, 0, "WOLFSDEN_HOUSE01_ARETHE_SQ417_STAND_01");
    TA_SMALLTALK(23, 0, 8, 0, "WOLFSDEN_HOUSE01_ARETHE_SQ417_STAND_01");
}

func void RTN_SQ417_WAITV2_10012() {
    TA_SIT_BENCH_DRINK(7, 0, 16, 0, "WOLFSDEN_HOUSE01_BENCH01");
    TA_WAITING(16, 0, 0, 0, "WOLFSDEN_HOUSE01_BENCH01");
    TA_SLEEP(0, 0, 7, 0, "WOLFSDEN_HOUSE01_BED02");
}

func void RTN_SQ417_PATROL_10012() {
    TA_LOOKOUT(8, 0, 23, 0, "WOLFSDEN_WALL_SQ417_STAND_01");
    TA_LOOKOUT(23, 0, 8, 0, "WOLFSDEN_WALL_SQ417_STAND_01");
}

func void RTN_SQ417_SEARCH_10012() {
    TA_SEARCH_ONLY(8, 0, 23, 0, "WOLFSDEN_PATH_60");
    TA_SEARCH_ONLY(23, 0, 8, 0, "WOLFSDEN_PATH_60");
}

