instance BAU_11036_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 0x2b1c;
    VOICE = 6;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_11036_FARMER, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BAU_11036_FARMER, MALE, HUMHEADFATBALD, FACE_N_FARMER77, 1, 0x8af3);
    MDL_APPLYOVERLAYMDS(BAU_11036_FARMER, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_11036_FARMER);
    B_GIVENPCTALENTS(BAU_11036_FARMER);
    B_SETFIGHTSKILLS(BAU_11036_FARMER, 10);
    DAILY_ROUTINE = RTN_START_11036;
    AIVAR[74] = NPC_SILBACH_IAMFARMER;
    AIVAR[70] = NPC_AMB_SILBACH;
}

func void RTN_START_11036() {
    TA_PLUNDER(7, 0, 22, 0, "VILLAGE_PLACE_53");
    TA_STAND_DRINKING(22, 0, 7, 0, "VILLAGE_PUB_30");
}

func void RTN_TOT_11036() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}

