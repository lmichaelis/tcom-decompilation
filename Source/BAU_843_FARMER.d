instance BAU_843_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 843;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_843_FARMER, 10);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_843_FARMER, MALE, HUMHEADFATBALD, FACE_N_GWIBERT, BODYTEX_N, 33906);
    MDL_APPLYOVERLAYMDS(BAU_843_FARMER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_843_FARMER);
    B_GIVENPCTALENTS(BAU_843_FARMER);
    B_SETFIGHTSKILLS(BAU_843_FARMER, 30);
    DAILY_ROUTINE = RTN_START_843;
    AIVAR[74] = NPC_VINEYARD_IAMFROMVALERIO;
    AIVAR[70] = NPC_AMB_VALERIO;
}

func void RTN_START_843() {
    TA_GRAPEPLUNDER(8, 0, 18, 0, "PART9_GRAPEFIELD_71");
    TA_SIT_BENCH_DRINK(18, 0, 22, 30, "PART9_VINEYARD_BENCH_06");
    TA_SLEEP(22, 30, 8, 0, "PART9_VINEYARD_BED_01");
}

func void RTN_TOT_843() {
    TA_GRAPEPLUNDER(8, 0, 14, 0, TOT);
    TA_GRAPEPLUNDER(14, 0, 8, 0, TOT);
}

