instance VLK_13809_PEDDLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_PEDDLER;
    GUILD = GIL_VLK;
    ID = 13809;
    VOICE = 59;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_13809_PEDDLER, 35);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_13809_PEDDLER, MALE, HUMHEADFATBALD, FACE_B_PEDDLER, 3, 35531);
    MDL_APPLYOVERLAYMDS(VLK_13809_PEDDLER, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(VLK_13809_PEDDLER);
    B_SETFIGHTSKILLS(VLK_13809_PEDDLER, 60);
    DAILY_ROUTINE = RTN_START_13809;
}

func void RTN_START_13809() {
    TA_STAND_WP(7, 0, 23, 0, RNG_NS68_WAYPOINT);
    TA_STAND_WP(23, 0, 7, 0, TOT2);
}

func void RTN_TOT_13809() {
    TA_STAND_WP(14, 40, 19, 0, TOT);
    TA_STAND_WP(19, 0, 14, 40, TOT);
}
