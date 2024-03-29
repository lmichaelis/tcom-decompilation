instance BAU_13368_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_OLDFARMER;
    GUILD = GIL_BAU;
    ID = 13368;
    VOICE = 57;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BAU_13368_FARMER, 3);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BAU_13368_FARMER, MALE, HUMHEADFATBALD, FACE_P_FARMER18, 0, 33906);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_13368_FARMER);
    MDL_APPLYOVERLAYMDS(BAU_13368_FARMER, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(BAU_13368_FARMER);
    B_SETFIGHTSKILLS(BAU_13368_FARMER, 10);
    DAILY_ROUTINE = RTN_START_13368;
}

func void RTN_START_13368() {
    TA_SIT_CAMPFIRE(7, 0, 21, 0, RNG_NS23_WAYPOINT);
    TA_SIT_CAMPFIRE(21, 0, 7, 0, TOT2);
}

func void RTN_TOT_13368() {
    TA_SIT_CAMPFIRE(7, 0, 21, 0, TOT2);
    TA_SIT_CAMPFIRE(21, 0, 7, 0, TOT2);
}

