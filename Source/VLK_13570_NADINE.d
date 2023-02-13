instance VLK_13570_NADINE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_NADINE;
    GUILD = GIL_VLK;
    ID = 13570;
    VOICE = 16;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_13570_NADINE, 24);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_13570_NADINE, FEMALE, HUMHEADBABE8, FACE_WN_NADINE, 5, 33900);
    MDL_APPLYOVERLAYMDS(VLK_13570_NADINE, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13570_NADINE);
    B_GIVENPCTALENTS(VLK_13570_NADINE);
    B_SETFIGHTSKILLS(VLK_13570_NADINE, 40);
    DAILY_ROUTINE = RTN_START_13570;
}

func void RTN_START_13570() {
    TA_SIT_DEPRESSION(8, 0, 22, 0, "PARTM3_PATH_24A");
    TA_SIT_DEPRESSION(22, 0, 8, 0, TOT2);
}

func void RTN_SQ507_13570() {
    TA_SMALLTALK(8, 0, 22, 0, "PARTM3_PATH_250");
    TA_SMALLTALK(22, 0, 8, 0, "PARTM3_PATH_250");
}

func void RTN_HOLLYSHIT_13570() {
    TA_STAND_WP(8, 0, 22, 0, "PARTM3_PATH_250");
    TA_STAND_WP(22, 0, 8, 0, "PARTM3_PATH_250");
}

func void RTN_TOT_13570() {
    TA_STAND_WP(8, 0, 22, 0, TOT2);
    TA_STAND_WP(22, 0, 8, 0, TOT2);
}

