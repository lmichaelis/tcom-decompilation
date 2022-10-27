instance VLK_13806_TAXCOLLECTOR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_TAXCOLLECTOR;
    GUILD = GIL_VLK;
    ID = 0x35ee;
    VOICE = 59;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_13806_TAXCOLLECTOR, 45);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_13806_TAXCOLLECTOR, MALE, HUMHEADPSIONIC, FACE_N_TAXCOLLECTOR, 1, 0x8ac9);
    MDL_APPLYOVERLAYMDS(VLK_13806_TAXCOLLECTOR, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13806_TAXCOLLECTOR);
    B_GIVENPCTALENTS(VLK_13806_TAXCOLLECTOR);
    B_SETFIGHTSKILLS(VLK_13806_TAXCOLLECTOR, 60);
    DAILY_ROUTINE = RTN_STARTA_13806;
}

func void RTN_STARTA_13806() {
    TA_STAND_WP(14, 40, 19, 0, RNG_NS67A_WAYPOINT);
    TA_STAND_WP(19, 0, 14, 40, RNG_NS67A_WAYPOINT);
}

func void RTN_STARTB_13806() {
    TA_STAND_WP(14, 40, 19, 0, RNG_NS67B_WAYPOINT);
    TA_STAND_WP(19, 0, 14, 40, RNG_NS67B_WAYPOINT);
}

func void RTN_TOT_13806() {
    TA_STAND_WP(14, 40, 19, 0, TOT);
    TA_STAND_WP(19, 0, 14, 40, TOT);
}

