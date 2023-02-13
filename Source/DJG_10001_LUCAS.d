instance DJG_10001_LUCAS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_LUCAS;
    GUILD = GIL_DJG;
    ID = 10001;
    VOICE = 66;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10001_LUCAS, 30);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(DJG_10001_LUCAS, MALE, HUMHEADPONY, FACE_N_LUCAS, 1, 35422);
    MDL_APPLYOVERLAYMDS(DJG_10001_LUCAS, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10001_LUCAS);
    B_GIVENPCTALENTS(DJG_10001_LUCAS);
    B_SETFIGHTSKILLS(DJG_10001_LUCAS, 60);
    DAILY_ROUTINE = RTN_START_10001;
}

func void RTN_START_10001() {
    TA_OCEAN(6, 0, 10, 0, "WOLFSDEN_LOOKOUT_01");
    TA_STAND_EATING(10, 0, 12, 0, "WOLFSDEN_LOOKOUT_01");
    TA_SIT_BENCH(12, 0, 15, 30, "WOLFSDEN_BENCH_01");
    TA_OCEAN(15, 30, 19, 0, "WOLFSDEN_LOOKOUT_01");
    TA_SIT_CHAIR_DRINK(19, 0, 23, 0, "WOLFSDEN_TAVERN_CHAIR02");
    TA_SLEEP(23, 0, 6, 0, "WOLFSDEN_HOUSE06_BED03");
}

func void RTN_Q506_10001() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PART5_MOB_50");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PART5_MOB_50");
}

