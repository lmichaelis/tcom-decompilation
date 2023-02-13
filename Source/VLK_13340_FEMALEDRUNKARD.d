instance VLK_13340_FEMALEDRUNKARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_FEMALEDRUNKARD;
    GUILD = GIL_VLK;
    ID = 13340;
    VOICE = 32;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_13340_FEMALEDRUNKARD, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_13340_FEMALEDRUNKARD, FEMALE, HUMHEADBABEHAIR1, FACE_WN_FEMALEDRUNKARD, 5, 35606);
    MDL_APPLYOVERLAYMDS(VLK_13340_FEMALEDRUNKARD, HUMANSDRUNKENMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13340_FEMALEDRUNKARD);
    B_GIVENPCTALENTS(VLK_13340_FEMALEDRUNKARD);
    B_SETFIGHTSKILLS(VLK_13340_FEMALEDRUNKARD, 30);
    DAILY_ROUTINE = RTN_START_13340;
}

func void RTN_START_13340() {
    TA_STAYSTRAIGHT(8, 0, 11, 0, RNG_NS13_WAYPOINT);
    TA_STAYSTRAIGHT(11, 0, 8, 0, RNG_NS13_WAYPOINT);
}

func void RTN_TOT_13340() {
    TA_STAYSTRAIGHT(8, 0, 11, 0, TOT2);
    TA_STAYSTRAIGHT(11, 0, 8, 0, TOT2);
}
