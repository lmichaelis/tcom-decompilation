instance NOV_226_NOVIZE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_NOVIZE;
    GUILD = GIL_NOV;
    ID = 226;
    VOICE = 59;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NOV_226_NOVIZE, 25);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NOV_226_NOVIZE, MALE, HUMHEADPYMONTENEU, FACE_B_NOVIZE_14, 3, 0x8b0a);
    MDL_APPLYOVERLAYMDS(NOV_226_NOVIZE, HUMANSMAGEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NOV_226_NOVIZE);
    B_GIVENPCTALENTS(NOV_226_NOVIZE);
    B_SETFIGHTSKILLS(NOV_226_NOVIZE, 40);
    DAILY_ROUTINE = RTN_START_226;
    AIVAR[70] = NPC_AMB_NOVIZE;
}

func void RTN_START_226() {
    TA_OBSERVE(7, 10, 0, 0, "PART8_MONASTERY_GUARD_01");
    TA_SLEEP(0, 0, 7, 10, "PART8_MONASTERY_BED_05");
}

func void RTN_TOT_226() {
    TA_COOK_STOVE(6, 0, 22, 0, TOT);
    TA_COOK_STOVE(22, 0, 6, 0, TOT);
}

