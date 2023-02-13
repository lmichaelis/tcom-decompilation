instance NOV_13818_NOVIZE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_NOVIZE;
    GUILD = GIL_NOV;
    ID = 13818;
    VOICE = 63;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NOV_13818_NOVIZE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NOV_13818_NOVIZE, MALE, HUMHEADFIGHTER, FACE_N_PATRON_06, 1, 33913);
    MDL_APPLYOVERLAYMDS(NOV_13818_NOVIZE, HUMANSMAGEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NOV_13818_NOVIZE);
    B_GIVENPCTALENTS(NOV_13818_NOVIZE);
    B_SETFIGHTSKILLS(NOV_13818_NOVIZE, 20);
    DAILY_ROUTINE = RTN_START_13818;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_13818() {
    TA_SMALLTALK(7, 30, 18, 50, "PARTM1_SMALLTALK_08");
    TA_PRAYSTAND(18, 50, 22, 0, "PARTM1_CHURCH_PRAY_02");
    TA_SIT_BENCH(22, 0, 7, 30, "PARTM1_CHURCH_BENCH_01");
}

func void RTN_Q308_13818() {
    TA_SMALLTALK(7, 30, 18, 50, "PARTM1_SMALLTALK_08");
    TA_PRAYSTAND(18, 50, 7, 30, "PARTM1_CHURCH_BENCH_01");
}

