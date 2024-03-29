instance VLK_13409_GIRL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_GIRL;
    GUILD = GIL_NONE;
    ID = 13409;
    VOICE = 40;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13409_GIRL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_13409_GIRL, FEMALE, HUMHEADBABE5, FACE_WB_CITIZEN107, 7, 35602);
    MDL_APPLYOVERLAYMDS(VLK_13409_GIRL, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13409_GIRL);
    B_GIVENPCTALENTS(VLK_13409_GIRL);
    B_SETFIGHTSKILLS(VLK_13409_GIRL, 30);
    DAILY_ROUTINE = RTN_START_13409;
}

func void RTN_START_13409() {
    TA_SIT_CAMPFIRE(8, 0, 9, 0, RNG_NS30_WAYPOINT);
    TA_SIT_CAMPFIRE(9, 0, 8, 0, RNG_NS30_WAYPOINT);
}

func void RTN_TOT_13409() {
    TA_SIT_CAMPFIRE(8, 0, 9, 0, TOT2);
    TA_SIT_CAMPFIRE(9, 0, 8, 0, TOT2);
}

