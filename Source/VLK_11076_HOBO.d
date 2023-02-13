instance VLK_11076_HOBO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOBO;
    GUILD = GIL_NONE;
    ID = 11076;
    VOICE = 21;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_11076_HOBO, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(VLK_11076_HOBO, HUMANSMDS);
    MDL_SETVISUALBODY(VLK_11076_HOBO, HUMBODYNAKED0, BODYTEX_N_HOMELESS01, 0, HUMHEADLUTTERNEU, FACE_N_HOBO02, TEETHTEX_ROTTEN_V1, -(1));
    MDL_APPLYOVERLAYMDS(VLK_11076_HOBO, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11076_HOBO);
    B_GIVENPCTALENTS(VLK_11076_HOBO);
    B_SETFIGHTSKILLS(VLK_11076_HOBO, 35);
    DAILY_ROUTINE = RTN_START_11076;
}

func void RTN_START_11076() {
    TA_STAND_DRINKING(11, 0, 16, 0, RNG_TRAP05_WAYPOINT);
    TA_SMALLTALK(16, 0, 18, 0, "PARTM1_HOBO_03");
    TA_STAND_DRINKING(18, 0, 20, 0, RNG_TRAP05_WAYPOINT);
    TA_SMALLTALK(20, 0, 22, 0, "PARTM1_HOBO_03");
    TA_STAND_DRINKING(22, 0, 0, 0, RNG_TRAP05_WAYPOINT);
    TA_SMALLTALK(0, 0, 5, 0, "PARTM1_HOBO_03");
    TA_STAND_DRINKING(5, 0, 7, 0, RNG_TRAP05_WAYPOINT);
    TA_SMALLTALK(7, 0, 11, 0, RNG_TRAP05_WAYPOINT);
}

