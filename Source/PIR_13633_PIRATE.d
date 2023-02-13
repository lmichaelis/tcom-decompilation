instance PIR_13633_PIRATE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BOXER;
    GUILD = GIL_NONE;
    ID = 13633;
    VOICE = 46;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETATTRIBUTESTOLEVELFC(PIR_13633_PIRATE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(PIR_13633_PIRATE, MALE, HUMHEADPONY, FACE_N_PIRATE10, BODYTEX_N, 33570);
    MDL_APPLYOVERLAYMDS(PIR_13633_PIRATE, HUMANSRELAXEDMDS);
    B_CREATEAMBIENTINV(PIR_13633_PIRATE);
    B_GIVENPCTALENTS(PIR_13633_PIRATE);
    B_SETFIGHTSKILLS(PIR_13633_PIRATE, 50);
    DAILY_ROUTINE = RTN_START_13633;
}

func void RTN_START_13633() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, RNG_TRAP53_WAYPOINT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, RNG_TRAP53_WAYPOINT);
}

func void RTN_TOT_13633() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT2);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT2);
}
