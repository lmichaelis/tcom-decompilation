instance VLK_13778_PECULIARCITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_PECULIARCITIZEN;
    GUILD = GIL_VLK;
    ID = 0x35d2;
    VOICE = 3;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_13778_PECULIARCITIZEN, 8);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_13778_PECULIARCITIZEN, MALE, HUMHEADBALD, FACE_N_PECULIARCITIZEN, 1, 0x8adb);
    MDL_APPLYOVERLAYMDS(VLK_13778_PECULIARCITIZEN, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13778_PECULIARCITIZEN);
    B_GIVENPCTALENTS(VLK_13778_PECULIARCITIZEN);
    B_SETFIGHTSKILLS(VLK_13778_PECULIARCITIZEN, 50);
    DAILY_ROUTINE = RTN_START_13778;
}

func void RTN_START_13778() {
    TA_SEARCH_ONLY(7, 0, 8, 0, RNG_NS55_WAYPOINT);
    TA_SEARCH_ONLY(8, 0, 7, 0, RNG_NS55_WAYPOINT);
}

func void RTN_TOT_13778() {
    TA_STAND_WP(7, 0, 8, 0, TOT);
    TA_STAND_WP(8, 0, 7, 0, TOT);
}

