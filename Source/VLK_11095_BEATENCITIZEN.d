instance VLK_11095_BEATENCITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BEATENFARMER;
    GUILD = GIL_BAU;
    ID = 11095;
    VOICE = 70;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    ATTRIBUTE[4] = 15;
    AIVAR[81] = 15;
    ATTRIBUTE[5] = 15;
    AIVAR[82] = 15;
    ATTRIBUTE[1] = 450;
    ATTRIBUTE[0] = 422;
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_11095_BEATENCITIZEN, MALE, HUMHEADFATBALD, FACE_N_BEATENCITIZEN, 1, 33906);
    MDL_APPLYOVERLAYMDS(VLK_11095_BEATENCITIZEN, HUMANSHURTMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11095_BEATENCITIZEN);
    CREATEINVITEMS(VLK_11095_BEATENCITIZEN, 34204, 1);
    B_GIVENPCTALENTS(VLK_11095_BEATENCITIZEN);
    B_SETFIGHTSKILLS(VLK_11095_BEATENCITIZEN, 20);
    DAILY_ROUTINE = RTN_START_11095;
}

func void RTN_START_11095() {
    TA_STAYSTRAIGHT(8, 0, 10, 0, RNG_TRAP03_WAYPOINT);
    TA_STAYSTRAIGHT(10, 0, 8, 0, RNG_TRAP03_WAYPOINT);
}

func void RTN_AFTEREVENT_11095() {
    TA_LEAN(8, 0, 10, 0, "VILLAGE_PATH_194AFTEREVENT");
    TA_LEAN(10, 0, 8, 0, "VILLAGE_PATH_194AFTEREVENT");
}

func void RTN_TOT_11095() {
    TA_STAYSTRAIGHT(8, 0, 10, 0, TOT2);
    TA_STAYSTRAIGHT(10, 0, 8, 0, TOT2);
}

