instance NONE_6263_OLDMAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_OLDMAN;
    GUILD = GIL_NONE;
    ID = 6263;
    VOICE = 68;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6263_OLDMAN, 10);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_6263_OLDMAN, MALE, HUMHEADBALD, FACE_N_OLDMAN, 1, 35547);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6263_OLDMAN);
    B_GIVENPCTALENTS(NONE_6263_OLDMAN);
    B_SETFIGHTSKILLS(NONE_6263_OLDMAN, 45);
    DAILY_ROUTINE = RTN_START_6263;
}

func void RTN_START_6263() {
    TA_LEAN(8, 0, 9, 0, "PART12_PATH_65");
    TA_LEAN(9, 0, 8, 0, "PART12_PATH_65");
}

func void RTN_GUIDE_6263() {
    TA_GUIDE_PLAYER(8, 0, 9, 0, "PART12_PATH_43");
    TA_GUIDE_PLAYER(9, 0, 8, 0, "PART12_PATH_43");
}

func void RTN_GUIDEBANDITS_6263() {
    TA_GUIDE_PLAYER(8, 0, 9, 0, "PART12_OLDMAN_STAND");
    TA_GUIDE_PLAYER(9, 0, 8, 0, "PART12_OLDMAN_STAND");
}

func void RTN_GUIDECAVE_6263() {
    TA_GUIDE_PLAYER(8, 0, 9, 0, "PART12_CAVE_09");
    TA_GUIDE_PLAYER(9, 0, 8, 0, "PART12_CAVE_09");
}

func void RTN_GUIDEWOLFS_6263() {
    TA_GUIDE_PLAYER(8, 0, 9, 0, "PART12_PATH_116");
    TA_GUIDE_PLAYER(9, 0, 8, 0, "PART12_PATH_116");
}

func void RTN_GUIDERENEGADES_6263() {
    TA_GUIDE_PLAYER(8, 0, 9, 0, "PART12_PATH_111");
    TA_GUIDE_PLAYER(9, 0, 8, 0, "PART12_PATH_111");
}

func void RTN_CAMPFIRE_6263() {
    TA_SIT_TURKISH(8, 0, 9, 0, "PART12_CAMPFIRE_OLDMAN");
    TA_SIT_TURKISH(9, 0, 8, 0, "PART12_CAMPFIRE_OLDMAN");
}

func void RTN_TOT_6263() {
    TA_SIT_TURKISH(8, 0, 9, 0, TOT);
    TA_SIT_TURKISH(9, 0, 8, 0, TOT);
}

