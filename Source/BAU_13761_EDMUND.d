instance BAU_13761_EDMUND(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_EDMUND;
    GUILD = GIL_BAU;
    ID = 13761;
    VOICE = 10;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_CREATEAMBIENTINV(BAU_13761_EDMUND);
    B_SETATTRIBUTESTOLEVEL(BAU_13761_EDMUND, 2);
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_13761_EDMUND, MALE, HUMHEADBALD, FACE_N_EDMUND, 1, 35547);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_13761_EDMUND);
    MDL_APPLYOVERLAYMDS(BAU_13761_EDMUND, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(BAU_13761_EDMUND);
    B_SETFIGHTSKILLS(BAU_13761_EDMUND, 50);
    DAILY_ROUTINE = RTN_START_13761;
}

func void RTN_START_13761() {
    TA_SIT_TURKISH(8, 0, 22, 0, RNG_TRAP55_WAYPOINT);
    TA_SIT_TURKISH(22, 0, 8, 0, RNG_TRAP55_WAYPOINT);
}

