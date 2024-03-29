instance BAU_732_PETE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_PETE;
    GUILD = GIL_BAU;
    ID = 732;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_CREATEAMBIENTINV(BAU_732_PETE);
    B_SETATTRIBUTESTOLEVEL(BAU_732_PETE, 5);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BAU_732_PETE, MALE, HUMHEADPONY, FACE_B_PETE, 3, 35572);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_732_PETE);
    MDL_APPLYOVERLAYMDS(BAU_732_PETE, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(BAU_732_PETE);
    B_SETFIGHTSKILLS(BAU_732_PETE, 15);
    DAILY_ROUTINE = RTN_START_732;
}

func void RTN_START_732() {
    TA_SIT_TURKISH(8, 0, 22, 0, RNG_NS31_WAYPOINT);
    TA_SIT_TURKISH(22, 0, 8, 0, TOT2);
}

func void RTN_TOT_732() {
    TA_SIT_TURKISH(8, 0, 22, 0, TOT2);
    TA_SIT_TURKISH(22, 0, 8, 0, TOT2);
}

func void RTN_RUN_732() {
    TA_RUNTOWP_NOIQ(8, 0, 22, 0, TOT);
    TA_RUNTOWP_NOIQ(22, 0, 8, 0, TOT);
}

