instance VLK_13844_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 13844;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13844_CITIZEN, 15);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_13844_CITIZEN, MALE, HUMHEADBALD, FACE_N_PATRON_17, 1, 35551);
    MDL_APPLYOVERLAYMDS(VLK_13844_CITIZEN, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13844_CITIZEN);
    B_GIVENPCTALENTS(VLK_13844_CITIZEN);
    B_SETFIGHTSKILLS(VLK_13844_CITIZEN, 25);
    DAILY_ROUTINE = RTN_START_13844;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_13844() {
    TA_SIT_BENCH(8, 0, 17, 50, "SLUMS_BENCH_05");
    TA_PRAYSTAND(17, 50, 19, 2, "HARBOUR_PRAY_06");
    TA_SLEEP(19, 2, 8, 0, "PARTM1_HOUSE3_BED_04");
}

