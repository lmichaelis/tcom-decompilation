instance NOV_228_NOVIZE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_NOVIZE;
    GUILD = GIL_NOV;
    ID = 228;
    VOICE = 59;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NOV_228_NOVIZE, 25);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NOV_228_NOVIZE, MALE, HUMHEADWITHOUTPONY, FACE_N_NOVIZE_16, 1, 0x8b0a);
    MDL_APPLYOVERLAYMDS(NOV_228_NOVIZE, HUMANSMAGEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NOV_228_NOVIZE);
    B_GIVENPCTALENTS(NOV_228_NOVIZE);
    B_SETFIGHTSKILLS(NOV_228_NOVIZE, 40);
    DAILY_ROUTINE = RTN_START_228;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_228() {
    TA_SIT_BENCH(7, 10, 0, 0, "PART8_MONASTERY_BENCH_02");
    TA_SIT_BENCH(0, 0, 7, 10, "PART8_MONASTERY_BENCH_02");
}

func void RTN_Q501_WAITOUTSIDE_228() {
    TA_STAYSTRAIGHT_NOIQ(7, 10, 0, 0, "PART8_NOV_HOUSE_22");
    TA_STAYSTRAIGHT_NOIQ(0, 0, 7, 10, "PART8_NOV_HOUSE_22");
}

func void RTN_Q502_GUIDE_TOWER_228() {
    TA_GUIDE_PLAYER(22, 0, 23, 0, "PART8_MONASTERY_Q502_NOVIZE_WAIT");
    TA_GUIDE_PLAYER(23, 0, 22, 0, "PART8_MONASTERY_Q502_NOVIZE_WAIT");
}

func void RTN_TOT_228() {
    TA_COOK_STOVE(6, 0, 22, 0, TOT);
    TA_COOK_STOVE(22, 0, 6, 0, TOT);
}

