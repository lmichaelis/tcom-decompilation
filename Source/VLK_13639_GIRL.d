instance VLK_13639_GIRL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ANGRYFEMALECITIZEN;
    GUILD = GIL_VLK;
    ID = 13639;
    VOICE = 69;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_13639_GIRL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_13639_GIRL, FEMALE, HUMHEADBABE1, FACE_FN_CITIZEN116, 5, 33912);
    MDL_APPLYOVERLAYMDS(VLK_13639_GIRL, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13639_GIRL);
    B_GIVENPCTALENTS(VLK_13639_GIRL);
    B_SETFIGHTSKILLS(VLK_13639_GIRL, 30);
    DAILY_ROUTINE = RTN_START_13639;
    AIVAR[75] = WALKMODE_WALK;
}

func void RTN_START_13639() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "HARBOUR_TEMPLE_21");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "HARBOUR_TEMPLE_21");
}

func void RTN_TOT_13639() {
    TA_STAYSTRAIGHT(6, 30, 9, 30, TOT);
    TA_STAYSTRAIGHT(9, 30, 6, 30, TOT);
}

