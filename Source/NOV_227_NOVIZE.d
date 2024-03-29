instance NOV_227_NOVIZE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_NOVIZE;
    GUILD = GIL_NOV;
    ID = 227;
    VOICE = 67;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NOV_227_NOVIZE, 25);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NOV_227_NOVIZE, MALE, HUMHEADWITHOUTPONY, FACE_P_NOVIZE_15, 0, 35594);
    MDL_APPLYOVERLAYMDS(NOV_227_NOVIZE, HUMANSMAGEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NOV_227_NOVIZE);
    B_GIVENPCTALENTS(NOV_227_NOVIZE);
    B_SETFIGHTSKILLS(NOV_227_NOVIZE, 40);
    DAILY_ROUTINE = RTN_START_227;
    AIVAR[70] = NPC_AMB_NOVIZE;
}

func void RTN_START_227() {
    TA_OBSERVE(7, 10, 0, 0, "PART8_MONASTERY_GUARD_02");
    TA_SLEEP(0, 0, 7, 10, "PART8_MONASTERY_BED_04");
}

func void RTN_TOT_227() {
    TA_COOK_STOVE(6, 0, 22, 0, TOT);
    TA_COOK_STOVE(22, 0, 6, 0, TOT);
}

